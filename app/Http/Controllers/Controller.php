<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
use App\Models\Prize;
use App\Models\Winning;
use DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index(){
        $prize = DB::table('prizes')
                        // ->inRandomOrder()
                        ->whereNull('winner')
                        ->first();

        $user = User::inRandomOrder()
                    ->whereNull('prize')
                    ->first(); 

        // $winner = [];
        // // for($i = 0; $i < 100; $i++){
        // //     $u = User::inRandomOrder()
        // //             ->whereNull('prize')
        // //             ->first(); 
        // //     $winner[$i] = $u->number;
        // // }
        // // dd(array_count_values($winner));

        if(!$prize){
            return redirect()->route('list');
        }

        $saveUser = User::find($user->id);
        $savePrize = Prize::find($prize->id);

        $saveUser->prize = $prize->id;
        $savePrize->winner = $user->id;

        $saveUser->save();
        $savePrize->save();

        $win = Winning::create([
            'user' => $user->id,
            'prize' => $prize->id,
        ]);

        return view('index', compact("prize", "user"));
    }

    public function redraw($prize_id){
        $win = Winning::where('prize', $prize_id)->delete();
        $prize = Prize::find($prize_id);
        $user = User::find($prize->winner);

        $prize->winner = null;
        $prize->save();
        $user->prize = null;
        $user->save();

        return redirect()->route("index", ['prize_id' => $prize_id]);
    }

    public function list(){
        $winnings = Winning::all();
        try{
            if($winnings->first()){
                foreach ($winnings as $key => $win) {
                    $list[$key]['user'] = User::find($win->user)->number;
                    $list[$key]['prize'] = Prize::find($win->prize)->name; 
                }
            }else{
                $list[0]['user'] = "Empty";
                $list[0]['prize'] = "Empty"; 
            }
        }catch(Exception $e){
            dd($e);
        }
        return view('list', compact("list"));
    }

    public function reset(){

        $winnings = DB::table('winnings')->truncate();
        $users = DB::table('users')->update(['prize' => null]);
        $prizes = DB::table('prizes')->update(['winner' => null]);
        //dd($prizes);

        return redirect()->route('index');
    }
}

