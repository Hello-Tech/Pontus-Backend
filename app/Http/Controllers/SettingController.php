<?php namespace App\Http\Controllers;
/**
 * Created by PhpStorm.
 * User: shishengyi
 * Date: 2017/11/22
 * Time: 上午11:38
 */

use App\Model\System;
use App\Http\Controllers\Controller;

class SettingController extends Controller{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $settings = \DB::table('systems')->paginate(15);
        return view("setting.index")->with("settings",$settings);
    }

    public function edit($id){
        $setting = System::find($id);
        if($setting == null){
            $this->notFound();
        }
        return view('setting.edit')->with("setting",$setting);
    }

    public function update($id){
        $setting = System::find($id);

        $val = $this->queryString("system_value","");

        $data = array(
            'system_name' => $setting->system_name,
            'system_value' => $val
        );

        if (System::where('id', $id)->update($data)) {
            return redirect("/setting");
        }else{
            $setting->system_value = $val;
            return view('setting.edit')->with("setting",$setting);
        }
    }
}