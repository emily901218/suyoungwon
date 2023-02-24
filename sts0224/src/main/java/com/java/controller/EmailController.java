package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.service.MailService;

@Controller
public class EmailController {

	@Autowired
	HttpSession session;
	
	@Autowired
	MailService mailService;
	
	@PostMapping("sendEmail")
	@ResponseBody//ajax는 무조건 이 어노체이션을 쓴다.
	public String sendEmail(String userEmail,String userName) {
		System.out.println("EmailController userEmail : "+userEmail);
		System.out.println("EmailController userName : "+userName);
		//텍스트 이메일 발송
		String pwCode = mailService.mailSend(userEmail, userName);
		//html 이메일 발송
		//String pwCode = mailService.mailSend2(userEmail, userName);
		//파일포함 이메일 발송
		//String pwCode = mailService.mailSend3(userEmail, userName);
		
		session.setAttribute("sessionPwCode", pwCode);
		
		
		return pwCode;
	}
	
	@PostMapping("checkEmail")
	@ResponseBody//  넘어오는 데이터를 key value로 잘 바꿔줘
	public String checkEmail(String pwCheck) {
		String result ="Chk_F";
		//비밀번호 일치시
		if(session.getAttribute("sessionPwCode").equals(pwCheck)) {
			result ="Chk_T";
			System.out.println("checkEmail pwCheck : "+pwCheck);
			System.out.println("checkEmail result : "+result);
			
		}
		
		return result;//
	}
}
