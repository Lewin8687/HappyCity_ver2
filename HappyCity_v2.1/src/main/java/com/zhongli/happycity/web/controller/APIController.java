package com.zhongli.happycity.web.controller;

import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zhongli.happycity.persistence.model.User;
import com.zhongli.happycity.web.util.GenericResponse;
@RestController
@RequestMapping(value = "/admin")
public class APIController {
	
	@RequestMapping("/greeting")
	public GenericResponse greeting(@AuthenticationPrincipal User user){
		return new GenericResponse("Hello"+user+"!");
	}

}
