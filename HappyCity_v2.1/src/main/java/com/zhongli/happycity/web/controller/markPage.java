package com.zhongli.happycity.web.controller;

import java.util.ArrayList;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zhongli.happycity.persistence.model.MarkMessage;
import com.zhongli.happycity.persistence.model.MediaObject;
import com.zhongli.happycity.persistence.model.User;

/**
 * 标记界面的控制器
 * 
 * @author zhonglili
 *
 */
@RestController
@RequestMapping(value = "/annotation")
@Secured("ROLE_USER")
public class markPage {

	// 从数据库取twitterID
	@RequestMapping("/getnewmessage")
	public MarkMessage getUnMarkedMessage(@AuthenticationPrincipal User user,
			@RequestParam(value = "user_email", defaultValue="null") String user_email, @RequestParam(value = "lang", defaultValue="['en']") ArrayList<String> lang,
			@RequestParam(value = "annotate_part", defaultValue="word_and_media") String annotate_part) {
		System.out.println(user);
		// System.out.println("我要获得"+num+"条数据");
		System.out.println("user:" + user_email + "lang:" + lang + "annotate_part" + annotate_part);
		MarkMessage ma = new MarkMessage();
		// 连接数据库获得数据
  
		// 赋值
		ma.setMsg_id(12560);
		ma.setText("@KodeyMumford happy birthday buddy ???? sorry I can't come tonight http://t.co/5aYinaKth1");
		ma.setLang("en");
		ArrayList<MediaObject> medias = new ArrayList<MediaObject>();
		medias.add(new MediaObject("photo", "http://pbs.twimg.com/media/CMz3Oc1WUAAJTzA.jpg"));
		medias.add(new MediaObject("photo", "http://pbs.twimg.com/media/CMz3Oc7WEAATEvF.jpg"));
		medias.add(new MediaObject("photo", "http://pbs.twimg.com/media/CMz3OdAXAAA7mze.jpg"));
		medias.add(new MediaObject("photo", "http://pbs.twimg.com/media/CMz3OeJWcAArDcX.jpg"));
		ma.setMedia_num(medias.size());
		ma.setMedias(medias);
		return ma;
	}

}
