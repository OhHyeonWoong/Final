package com.kh.goodluck.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SocketController {
     
    @RequestMapping("chat.go")
    public String viewChattingPage() {
    return "A5.CJS/chatting";
    }
    @RequestMapping("paint.go")
    public String viewPaintingPage() {
        return "A5.CJS/chatting";
    }

    
}
