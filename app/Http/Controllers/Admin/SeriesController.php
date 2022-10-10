<?php

namespace App\Http\Controllers\Admin;

// use App\CategorySeries;
use App\Country;
use App\Http\Controllers\Controller;
// use App\Season;
use App\Series;
use App\Star;
use App\VideoCategory;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Session;
// use Illuminate\Support\Facades\HTTP;

class SeriesController extends Controller
{
    public function index(){
        Session::put('page','series');
        $series = Series::with(['categories','seasons'])->orderBy('id','desc')->get();
        return view('series.index',compact('series'))->with('no', 1);
    }
    
    public function create(){
        
        // $data = Http::get('https://api.themoviedb.org/3/movie/550?api_key=ac0bfd74754b468bb9116ef77a40392f');
        
        $category= VideoCategory::all();
        $country= Country::all();
        $actor= Star::where('star_type','=','actor')->get();
        $director= Star::where('star_type','=','director')->get();
        $writer= Star::where('star_type','=','writer')->get();
        // dd($star);
        return view('series.create',compact('category','country','actor','director','writer'));
    }

    public function store(Request $request){

        $validatedData = $request->validate([
            'series_name' => 'required',
            'imgType' => 'required',
            'cat_id' => 'required',
            'country_id' => 'required',
        ]);
        
        $series = new Series;

        if($request->thumbnail_image){
                //Thumbnailimage
            $imageName = time().'.'.$request->thumbnail_image->extension();  
            $request->thumbnail_image->move(public_path('images/'), $imageName);
                // $series->thumbnail_image = env('URL').'images/'.$imageName;
            $series->thumbnail_image = $imageName;
            $series->save();
        }
        if($request->poster_image){

                //posterImage
            $posterImage = rand().'.'.$request->poster_image->extension(); 
            $request->poster_image->move(public_path('images/'), $posterImage);
                // $series->poster_image = env('URL').'images/'.$posterImage;
            $series->poster_image = $posterImage;
            $series->save();
        }
        else{
            $series->thumbUrl = $request->thumbUrl;
            $series->posterUrl = $request->posterUrl;
        }

        $series->series_name = $request->series_name;
        $series->description = $request->description;
        $series->release_date = $request->release_date;
        $series->imgType = $request->imgType;
           
        $series->save();

        $categoryList = VideoCategory::find($request->cat_id);
        $series->categories()->sync($categoryList);

        $countryList = Country::find($request->country_id);
        $series->countries()->sync($countryList);
 
                //actor
        if($request->star_id_actor)
        {

            $actorList= Star::whereIn('star_name',$request->star_id_actor)->orWhereIn('id',$request->star_id_actor)->get();
                    
            foreach($actorList as $actor){
                $actorsArray[]=  $actor->id;
            }
            if(empty($actorsArray)){
                $name = $request->star_id_actor;
                for($i=0;$i<count($name);$i++){
                    $data=  [
                        'star_name' => $name[$i],
                        'star_type' => 'actor',
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ];
                    $actors = Star::create($data);
                }
                        
            }
                   
        }

        //writer
        if($request->star_id_writer)
        {

            $writerList= Star::whereIn('star_name',$request->star_id_writer)->orWhereIn('id',$request->star_id_writer)->get();
                    
            foreach($writerList as $writer){
                $writersArray[]=  $writer->id;
            }
            if(empty($writersArray)){
                $name = $request->star_id_writer;
                for($i=0;$i<count($name);$i++){
                    $data=  [
                        'star_name' => $name[$i],
                        'star_type' => 'writer',
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ];
                    $writers = Star::create($data);
                }
                        
            }
                   
        }
        //director
        if($request->star_id_director)
        {

            $directorList= Star::whereIn('star_name',$request->star_id_director)->orWhereIn('id',$request->star_id_director)->get();
                    
            foreach($directorList as $director){
                    $directorsArray[]=  $director->id;
                }
            if(empty($directorsArray)){
                $name = $request->star_id_director;
                for($i=0;$i<count($name);$i++){
                    $data=  [
                        'star_name' => $name[$i],
                        'star_type' => 'director',
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ];
                    $directors = Star::create($data);
                }
                        
            }
                   
        }

        $newActor = Star::whereIn('star_name',$request->star_id_actor)->orWhereIn('id',$request->star_id_actor)->get();
        $newWriter = Star::whereIn('star_name',$request->star_id_writer)->orWhereIn('id',$request->star_id_writer)->get();
        $newDirector = Star::whereIn('star_name',$request->star_id_director)->orWhereIn('id',$request->star_id_director)->get();

        foreach($newActor as $newActor){
            $newActorArray[]=  $newActor->id;
        }

        foreach($newWriter as $newWriter){
            $newWriterArray[]=  $newWriter->id;
        }

        foreach($newDirector as $newDirector){
            $newDirectorArray[]=  $newDirector->id;
        }

        $newStarArray=array_merge( $newActorArray, $newWriterArray, $newDirectorArray);
        $series->actors()->sync($newStarArray);

                

        if($series)
        {
            $notification=array(
                'message'=>'Successfully added',
                'alert-type'=>'success'
            );
            return redirect('admin/series')->with($notification);
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

    public function edit($id){
        $series= Series::with(['actors'])->find($id);
        // $series= Series::find($id);
        $category= VideoCategory::all();
        $country= Country::all();
        $actor= Star::where('star_type','=','actor')->get();
        $director= Star::where('star_type','=','director')->get();
        $writer= Star::where('star_type','=','writer')->get();
        return view('series.edit',compact('category','country','series','actor','director','writer'));
    }

    


    public function update(Request $request,$id)
    {

        $validatedData = $request->validate([
            'series_name' => 'required',
            'cat_id' => 'required',
            'country_id' => 'required',
            'star_id_actor' => 'required',
            'star_id_writer' => 'required',
            'star_id_director' => 'required',
        ]);


            $series = Series::find($id);
        
            //get old img
            $old_thumb = $request->input('old_thumb');
            $old_poster = $request->input('old_poster');
                
                if($request->thumbnail_image){
                    $imageName = time().'.'.$request->thumbnail_image->extension();  
                    $request->thumbnail_image->move(public_path('images/'), $imageName);
                    // $series->thumbnail_image = env('URL').'images/'.$imageName;
                    $series->thumbnail_image = $imageName;
                    
                    
                    $path1 = public_path('images/'.$old_thumb);
                    if(file_exists($path1)){
                        @unlink($path1);
                    }
                    $series->update();
                
                }
                else if($request->poster_image){
                    $posterImage = rand().'.'.$request->poster_image->extension(); 
                    $request->poster_image->move(public_path('images/'), $posterImage);
                    // $series->poster_image = env('URL').'images/'.$posterImage;
                    $series->poster_image = $posterImage;
                    
                    $path2 = public_path('images/'.$old_poster);
                    if(file_exists($path2)){
                        @unlink($path2);
                    }
                    $series->update();
                }
                else{
                    $series->series_name = $request->series_name;
                    // $series->trailer = $request->trailer;
                    $series->description = $request->description;
                    $series->release_date = $request->release_date;
                    $series->thumbUrl = $request->thumbUrl;
                    $series->posterUrl = $request->posterUrl;
                     
                     
                }
                             
                $series->update();

                $categoryList = VideoCategory::find($request->cat_id);
                $series->categories()->sync($categoryList);

                $countryList = Country::find($request->country_id);
                $series->countries()->sync($countryList);


                //actor
                if($request->star_id_actor)
                {

                    $actorList= Star::whereIn('star_name',$request->star_id_actor)->orWhereIn('id',$request->star_id_actor)->get();
                    
                   foreach($actorList as $actor){
                        $actorsArray[]=  $actor->id;
                    }
                    if(empty($actorsArray)){
                        $name = $request->star_id_actor;
                        for($i=0;$i<count($name);$i++){
                            $data=  [
                                'star_name' => $name[$i],
                                'star_type' => 'actor',
                                'created_at' => Carbon::now(),
                                'updated_at' => Carbon::now(),
                            ];
                            $actors = Star::create($data);
                        }
                        
                    }
                   
                }

               
                //writer
                if($request->star_id_writer)
                {

                    $writerList= Star::whereIn('star_name',$request->star_id_writer)->orWhereIn('id',$request->star_id_writer)->get();
                    
                    foreach($writerList as $writer){
                            $writersArray[]=  $writer->id;
                        }
                    if(empty($writersArray)){
                        $name = $request->star_id_writer;
                        for($i=0;$i<count($name);$i++){
                            $data=  [
                                'star_name' => $name[$i],
                                'star_type' => 'writer',
                                'created_at' => Carbon::now(),
                                'updated_at' => Carbon::now(),
                            ];
                            $writers = Star::create($data);
                        }
                        
                    }
                   
                }
                //director
                if($request->star_id_director)
                {

                    $directorList= Star::whereIn('star_name',$request->star_id_director)->orWhereIn('id',$request->star_id_director)->get();
                    
                    foreach($directorList as $director){
                            $directorsArray[]=  $director->id;
                        }
                    if(empty($directorsArray)){
                        $name = $request->star_id_director;
                        for($i=0;$i<count($name);$i++){
                            $data=  [
                                'star_name' => $name[$i],
                                'star_type' => 'director',
                                'created_at' => Carbon::now(),
                                'updated_at' => Carbon::now(),
                            ];
                            $directors = Star::create($data);
                        }
                        
                    }
                   
                }

                $newActor = Star::whereIn('star_name',$request->star_id_actor)->orWhereIn('id',$request->star_id_actor)->get();
                $newWriter = Star::whereIn('star_name',$request->star_id_writer)->orWhereIn('id',$request->star_id_writer)->get();
                $newDirector = Star::whereIn('star_name',$request->star_id_director)->orWhereIn('id',$request->star_id_director)->get();

                        foreach($newActor as $newActor){
                            $newActorArray[]=  $newActor->id;
                        }

                        foreach($newWriter as $newWriter){
                            $newWriterArray[]=  $newWriter->id;
                        }

                        foreach($newDirector as $newDirector){
                            $newDirectorArray[]=  $newDirector->id;
                        }

                        $newStarArray=array_merge( $newActorArray, $newWriterArray, $newDirectorArray);
                        $series->actors()->sync($newStarArray);

              if($series)
                {
                    $notification=array(
                        'message'=>'Successfully updated Series',
                        'alert-type'=>'success'
                    );
                    return redirect('admin/series')->with($notification);
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
        $data = Series::find($id);
            $image = public_path('images/'. $data->thumbnail_image);
            $image2 = public_path('images/'. $data->poster_image);
            if(file_exists($image)){
                @unlink($image);
            }
            if(file_exists($image2)){
                @unlink($image2);
            }
        $data->delete();
        return redirect()->back()->with('message', 'Video has been deleted.');
    }


}
