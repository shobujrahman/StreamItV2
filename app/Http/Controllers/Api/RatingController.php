<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Item;
use App\Rating;
use App\Series;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RatingController extends Controller
{
    public function addRating(Request $request)
    {
        $validationRules = [
            'item_id' => 'required',
            'item_type' => 'required',
            'rating' => 'required',
        ];
        $validator = Validator::make(
            $request->all(),
            $validationRules
        );
        if ($validator->fails()) {
            return response()->json([
                'status' => 'failure',
                'message' => $validator->errors()->first(),
            ]);
        }

        $rating = new Rating();
        $rating->item_id = $request->item_id;
        $rating->item_type = $request->item_type;
        $rating->rating = $request->rating;
        $rating->save();

        $ratings = Rating::where('item_type',$request->item_type)->where('item_id', $request->item_id)->get();
        $sum = 0;
        foreach ($ratings as $rating) {
            $sum += $rating->rating;
        }
        $avg = $sum / count($ratings);

        if($request->item_type=='channel' || $request->item_type=='video'){
            $item = Item::find($request->item_id);
            $item->ratings = number_format($avg, 1);
            $item->update();
        }
        if($request->item_type=='series'){
            $item = Item::find($request->item_id);
            $item->ratings = number_format($avg, 1);
            $item->update();
        }
        

        if(!$item){
            return response()->json([
                'success' => false,
                'message' => 'Item not found',
            ]);
        }
        return response()->json([
            'success' => true,
            'data' => number_format($avg, 1),
        ]);
    }

}
