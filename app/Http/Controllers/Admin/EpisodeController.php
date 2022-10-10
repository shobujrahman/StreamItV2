<?php

namespace App\Http\Controllers\Admin;

use App\Content;
use App\Http\Controllers\Controller;
use App\Item;
use App\ItemUrl;
use App\Season;
use App\Series;
use App\TokenType;
use App\UrlType;
use App\UserAgentType;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EpisodeController extends Controller
{

    //get all episodes
    public function allEpisode (Request $request, $id){
        
        $series = Series::find($id);

        $season = Season::with(['series','episodes'])->where('series_id',$id)->get();

        $episodes = Item::with(['series'])->where('series_id',$id)->orderBy('id', 'DESC') ->get();
        $selected_id = [];
        $selected_id['season_id'] = $request->season_id;

        if($request->season_id){

            $episodes = Item::with(['series'])
                            ->where('series_id',$id)
                            ->where('season_id',$request->season_id)
                            ->orderBy('id', 'DESC')
                            ->get();
        }
    
        
        return view('episode.index', compact('episodes','series','season','selected_id'))->with('no', 1);
    }
    
    

    //create page for episode
    public function create($id){
        $urltype = UrlType::all();
        $contents=Content::all();
        $tokentype=TokenType::all();
        $agenttype=UserAgentType::all();
        $series = Series::with('seasons')->find($id);
        return view('episode.create',compact('urltype','series','contents','tokentype','agenttype'));
    }


    //store episode
    public function store(Request $request, $id){

        $validatedData = $request->validate([
            'image' => 'required',
            'banner_image' => 'required',
            'season_id' => 'required',
            'url_type' => 'required', 
            'name' => 'required',
            'url' => 'required',
        ]);
        
        $series = Series::find($id);

        $episode = new Item;

        if($request->watch_ads == 'paid'  || $request->watch_ads == 'rent' ){
            $rules = ['content_name' => 'required'];

            $message=['content_name.required' => ' Monetization required',];
            
            $this->validate($request, $rules,$message);
            
            $episode->content_id = $request->input('content_name');
            $episode->subscription = $request->input('watch_ads');

        }else{     
            if($request->watch_ads == 'free' || $request->watch_ads == 'yes'){
                $episode->content_id = $request->input('content_name');
                $episode->subscription = $request->input('watch_ads');
            }
        }

        //Thumbnailimage
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('images/'), $imageName);
        // $episode->image = env('URL').'images/'.$imageName;
        $episode->image = $imageName;

       //BannerIamge
        $bnnrImage = rand().'.'.$request->banner_image->extension(); 
        $request->banner_image->move(public_path('images/'), $bnnrImage);
        // $episode->banner_image = env('URL').'images/'.$bnnrImage;
        $episode->banner_image = $bnnrImage;


        //videoUpload
        if($request->url_type==9){
            
            $validatedData = $request->validate(['video_upload' => 'required']);

            $videoName = rand().'.'.$request->video_upload->extension(); 
            $request->video_upload->move(public_path('images/'), $videoName);
            // $episode->video_upload = env('URL').'images/'.$videoName;
            $episode->video_upload =$videoName;
        }else{

            $validatedData = $request->validate(['url' => 'required']);

            $episode->url = $request->url;
        }

        $episode->season_id = $request->season_id;
        $episode->name = $request->name;
        $episode->url_type = $request->url_type;
        $episode->content_type = 'series';
        $episode->series_id = $request->route('id');
        $episode->token = $request->input('token');
        $episode->user_agent = $request->input('user_agent');
        $episode->description = $request->input('description');
        
        $episode->save();


        //add different quality url
        $url = $request->urls;
        $quality = $request->quality;
        $item = $episode->id;

        for($i=0; $i<count($url); $i++){
            // $urls = new ItemUrl;
            $data=[

                'item_id' => $item,
                'url' => $url[$i],
                'quality' => $quality[$i],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
            DB::table('item_urls')->insert($data);
        }
        
        if($episode){
            $notification=array(
                'message'=>'Successfully  added',
                'alert-type'=>'success'
            );
            return redirect('admin/episode/'.$series->id)->with($notification);
        }
        else
        {
            $notification=array(
                'message'=>'Something went wrong',
                'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
        }

    }


    //edit episode
    public function edit($id,$sid){
        $urltype = UrlType::all();
        $contents=Content::all();
        $tokentype=TokenType::all();
        $agenttype=UserAgentType::all();
        $episode = Item::with(['series','seasons','urls'])->find($id);
        $series = Series::with('seasons')->find($sid);
        // dd($episode);
        return view('episode.edit',compact('episode','urltype','series','contents','tokentype','agenttype'));


    }

    
    //update episode
    public function update(Request $request,$id,$sid){

        $validatedData = $request->validate([
            'season_id' => 'required',
            'url_type' => 'required', 
            'name' => 'required',
        ]);

        $series = Series::with('seasons')->find($sid);

        $episode = Item::with(['series','seasons'])->find($id);

        $old_thumb = $request->input('old_thumb');
        $old_video = $request->input('old_video');
        $old_banner = $request->input('old_banner_image');

        if($request->image){

            $validatedData = $request->validate([
                'image' => 'required'
            ]);
            //Thumbnailimage
            $imageName = time().'.'.$request->image->extension();  
            $request->image->move(public_path('images/'), $imageName);
            // $episode->image = env('URL').'images/'.$imageName;
            $episode->image = $imageName;
                           
            $path1 = public_path('images/'.$old_thumb);
            if(file_exists($path1)){
                @unlink($path1);
            }
                
        }else if($request->banner_image){

            $validatedData = $request->validate([
                'banner_image' => 'required'
            ]);
            //BannerIamge
            $bnnrImage = rand().'.'.$request->banner_image->extension(); 
            $request->banner_image->move(public_path('images/'), $bnnrImage);
            // $episode->banner_image = env('URL').'images/'.$bnnrImage;
            $episode->banner_image = $bnnrImage;

            $path3 = public_path('images/'.$old_banner);
            if(file_exists($path3)){
                @unlink($path3);
            }
        }
       else if($request->url_type==9)
        {
           if($request->video_upload) 
           {
               $validatedData = $request->validate(['video_upload' => 'required']);

                $videoName = rand().'.'.$request->video_upload->extension(); 
                $request->video_upload->move(public_path('images/'), $videoName);
                // $episode->video_upload =env('URL').'images/'.$videoName;
                $episode->video_upload =$videoName;
                        
                $path2 = public_path('images/'.$old_video);
                if(file_exists($path2)){
                    @unlink($path2);
                }
            }
        }
        else if($request->watch_ads == 'paid'  || $request->watch_ads == 'rent' ){
                	
            $rules = [ 'content_name' => 'required'];
            $message=[
                    'content_name.required' => ' Monetization required',
                ];
    
            $this->validate($request, $rules,$message);
    
             $episode->content_id = $request->input('content_name');
             $episode->subscription = $request->input('watch_ads');                  
    }
    
    
            
        else if($request->watch_ads == 'free' || $request->watch_ads == 'yes'){
            $episode->content_id = $request->input('content_name');
            $episode->subscription = $request->input('watch_ads');
        }
    
    
        $episode->url = $request->url;
        $episode->season_id = $request->season_id;
        $episode->name = $request->name;
        $episode->url_type = $request->url_type;
        $episode->content_type = 'series';
        $episode->series_id = $request->series_id;
        $episode->token = $request->input('token');
        $episode->user_agent = $request->input('user_agent');
        $episode->description = $request->input('description');

        $episode->update();

        //add different quality url 
        $itemUrls = ItemUrl::where('item_id',$id)->get();
        $url = $request->urls;
        $quality = $request->quality;
        $item = $episode->id;
        

        //check if array of index is exist or not
        if(count($url)>0)
        {
            //then check if url is exist in array
            foreach($url as $key=>$value)
            {
                if(isset($itemUrls[$key]))
                {
                    //if url is exist then update url
                    $itemUrls[$key]->url = $value;
                    $itemUrls[$key]->quality = $quality[$key];
                    $itemUrls[$key]->save();
                }
                //if url is not exist then insert url
                else
                {
                    $data=[
                        'item_id' => $item,
                        'url' => $value,
                        'quality' => $quality[$key],
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ];
                    DB::table('item_urls')->insert($data);
                }
            }
        }

        // for($i=0; $i<count($itemUrls); $i++){
        //     $itemUrls[$i]->url = $url[$i];
        //     $itemUrls[$i]->quality = $quality[$i];
        //     $itemUrls[$i]->updated_at = Carbon::now();
        //     $itemUrls[$i]->update();
        // }

        if($episode)
        {
            $notification=array(
                'message'=>'Successfully  Updated',
                'alert-type'=>'success'
            );
            return redirect('admin/episode/'.$series->id)->with($notification);
        }
        else
        {
            $notification=array(
                'message'=>'Something went wrong',
                'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
        }
    }




    public function destroy($id){
        $data = Item::find($id);
            $image = public_path('images/'. $data->image);
            $video = public_path('images/'. $data->video_upload);
            if(file_exists($image)){
                @unlink($image);
            }
            if(file_exists($video)){
                @unlink($video);
            }
         $data->delete();
        return redirect()->back()->with('message', 'Episode has been deleted.');
    } 



    

}