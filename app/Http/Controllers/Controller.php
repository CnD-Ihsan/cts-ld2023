<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
use App\Models\Gift;
use App\Models\Winning;
use DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index(){

        $total_gq = DB::table('gifts')
                        ->select('type')
                        ->where('type', 'grand')
                        ->whereNull('winner')
                        ->count(); 
         
        
        if($total_gq <= 10){

            $gifts = Gift::where('type', 'standard')
                ->whereNull('winner')
                ->inRandomOrder()
                ->limit(7)
                ->get();  
            $gq = Gift::where('type', 'grand')
                ->whereNull('winner')
                ->inRandomOrder()
                ->limit(2)
                ->get();   
            $gifts = $gifts->merge($gq);

        }else if($total_gq < 1){
            $gifts = Gift::where('type', 'standard')
                ->whereNull('winner')
                ->inRandomOrder()
                ->limit(9)
                ->get();  
        }else{
            $gifts = Gift::where('type', 'standard')
                ->whereNull('winner')
                ->inRandomOrder()
                ->limit(8)
                ->get();  

            $gq = Gift::where('type', 'grand')
                ->whereNull('winner')
                ->inRandomOrder()
                ->limit(1)
                ->get();   
            $gifts = $gifts->merge($gq);
        }

        $users = User::inRandomOrder()
                    ->whereNull('prize')
                    ->limit(9)
                    ->get(); 
        
        if(!$gifts->first()){
            return redirect()->route('list');
        }

        if($gifts->count() == $users->count()){
            foreach ($users as $key => $user) {
                $win = Winning::create([
                    'user' => $user->id,
                    'prize' => $gifts[$key]->id,
                ]);
                
                $saveUser = User::find($user->id);
                $savePrize = Gift::find($gifts[$key]->id);

                $saveUser->prize = $gifts[$key]->id;
                $savePrize->winner = $user->id;

                $saveUser->save();
                $savePrize->save();
            }
            //dd($total_gq);
            return view('index', compact("gifts", "users"));
        }else{
            return "Number of Users and Gifts mismatch";
        }
    }

    public function list(){
        $winnings = Winning::all()->sortBy('user');

        if($winnings->first()){
            foreach ($winnings as $key => $win) {
                $list[$key]['user'] = $win->user;
                $list[$key]['prize'] = Gift::find($win->prize)->name; 
            }
            return view('list', compact("list"));
        }else{
            $list[0]['user'] = "Empty";
            $list[0]['prize'] = "Empty"; 
            return view('list', compact("list"));
        }
        
    }

    public function reset(){

        $winnings = DB::table('winnings')->truncate();
        $users = DB::table('users')->update(['prize' => null]);
        $prizes = DB::table('gifts')->update(['winner' => null]);
        //dd($prizes);

        return redirect()->route('index');
    }
}

