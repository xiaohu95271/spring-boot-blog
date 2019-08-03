package com.xiaohu.springbootblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 *  测试controller
 * @author 13220
 */
@Controller
public class HelloController {


    @RequestMapping("/hello")
    public String hello(){
        return "index";
    }
    @RequestMapping("/hello2")
    public String hello2(){
        return "index2";
    }
//
    @RequestMapping("/login")
    public String login(){

        return "blog/login";
    }
}
