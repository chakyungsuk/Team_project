package com.jeonguggu.matnam.user.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;
	
	@RequestMapping(value = "/chat/chatView")
	public String chatView() {
		
		return "/user/chat/chatView";
	}
	
	@RequestMapping(value = "/chat/chatView2")
	public String chatView2(Chat dto ,@ModelAttribute("vo") ChatVo vo, Model model) throws Exception {
		List<Chat> list = service.selectListFriend(vo);
		model.addAttribute("list", list);
		
		int rt = service.selectCount(vo);
		
		if(rt == 0) {
			service.insertChattingRoom(dto);
		} else {
			
		}
		Chat room = service.selectOne(vo);
		model.addAttribute("room", room);
		return "/user/chat/chatView2";
	}
	
}
