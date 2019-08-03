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
}
