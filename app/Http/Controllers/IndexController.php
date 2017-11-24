<?php namespace App\Http\Controllers;
/**
 * Created by PhpStorm.
 * User: shishengyi
 * Date: 2017/10/4
 * Time: 上午12:58
 */


class IndexController extends Controller
{

    public function index(){
        return view("home");
    }
}