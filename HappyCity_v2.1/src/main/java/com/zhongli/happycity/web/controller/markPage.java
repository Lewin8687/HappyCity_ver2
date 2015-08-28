package com.zhongli.happycity.web.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zhongli.happycity.persistence.model.MarkMessage;
import com.zhongli.happycity.persistence.model.User;

/**
 * 标记界面的控制器
 * @author zhonglili
 *
 */
@RestController
@RequestMapping(value = "/mark")
@Secured("ROLE_USER")
public class markPage {
	
	
	//从数据库取twitterID
	@RequestMapping("/getNew")
	public MarkMessage getUnMarkedMessage(@AuthenticationPrincipal User user,@RequestParam(value="num") int num){
		System.out.println(user.getEmail());
		System.out.println("我要获得"+num+"条数据");
		MarkMessage ma=new MarkMessage();
		//连接数据库获得数据
		
		//赋值
		ma.setId(123213123);
		ma.setText("hello~~~~~~");
		return ma;
	}
	
}
