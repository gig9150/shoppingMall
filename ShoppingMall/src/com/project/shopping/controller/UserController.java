package com.project.shopping.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.shopping.beans.UserBean;
import com.project.shopping.service.UserService;
import com.project.shopping.validator.UserValidator;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	//메일전송 정보를 담고 있는 객체
	@Resource(name = "mailSender")
	private JavaMailSenderImpl mailSender;
	
	@GetMapping("/login")
	public String login(@ModelAttribute("temporaryLoginUserBean") UserBean temporaryLoginUserBean,
						@CookieValue(name = "cookieId",required = false)String cookieId,
						@CookieValue(name = "cookiePw",required = false)String cookiePw,
						@CookieValue(name = "cookieCheck",required = false)String cookieCheck,
						Model model) {
		model.addAttribute("cookieId",cookieId);
		model.addAttribute("cookiePw",cookiePw);
		model.addAttribute("cookieCheck",cookieCheck);
		return "user/login";
	}
	
	@PostMapping("/login_pro")
	public String loginPro(@Valid @ModelAttribute("temporaryLoginUserBean") UserBean temporaryLoginUserBean,
							BindingResult result,
							String checkbox,
							HttpServletResponse response,
							HttpSession session) throws UnsupportedEncodingException {
		if(result.hasErrors()) {
			return "user/login";
		}
		
		// 자동 로그인이 체크된다면 쿠키로 로그인 정보를 보냄
		if(checkbox != null) {
			String id = URLEncoder.encode(temporaryLoginUserBean.getUser_id(),"UTF-8");
			String pw = URLEncoder.encode(temporaryLoginUserBean.getUser_pw(),"UTF-8");
			String Encheckbox = URLEncoder.encode(checkbox,"UTF-8");
			Cookie cookieId = new Cookie("cookieId",id);
			Cookie cookiePw = new Cookie("cookiePw",pw);
			Cookie cookieCheck = new Cookie("cookieCheck",Encheckbox);
			cookieId.setMaxAge(365*24*60*60);
			cookiePw.setMaxAge(365*24*60*60);
			cookieCheck.setMaxAge(365*24*60*60);
			response.addCookie(cookieId);
			response.addCookie(cookiePw);	
			response.addCookie(cookieCheck);
		}else {
			Cookie cookieId = new Cookie("cookieId","");
			Cookie cookiePw = new Cookie("cookiePw","");
			Cookie cookieCheck = new Cookie("cookieCheck",
					URLEncoder.encode("OFF","UTF-8"));
			cookieId.setMaxAge(0);
			cookiePw.setMaxAge(0);
			cookieCheck.setMaxAge(365*24*60*60);
			response.addCookie(cookieId);
			response.addCookie(cookiePw);
			response.addCookie(cookieCheck);
		}
		
		userService.getLoginUserInfo(temporaryLoginUserBean);
		session.setAttribute("userId", loginUserBean.getUser_id());
		
		
		if(loginUserBean.isUserLogin() == true) {
			return "user/login_success";
		}else {
			return "user/login_fail";
		}
		
	}
	
	@GetMapping("/not_login")
	public String notLogin() {
		return "user/not_login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//로그인 해제
		session.invalidate();
		loginUserBean.setUserLogin(false);
		return "user/logout";
	}
	
	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean")UserBean joinUserBean) {
		return "user/join";
	}
	
	@PostMapping("/join_pro")
	public String joinPro(@Valid @ModelAttribute("joinUserBean")UserBean joinUserBean,
						BindingResult result,
						Model model) {
		
		if(result.hasErrors()) {
			return "user/join";
		}
		
		userService.addUserInfo(joinUserBean);
		model.addAttribute("user_id",joinUserBean.getUser_id());
		
		return "user/join_success";
	}
	
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean")UserBean modifyUserBean) {
		
		userService.getModifyUserInfo(modifyUserBean);
		
		return "user/modify";
	}
	
	@PostMapping("/modify_pro")
	public String modifyPro(@Valid @ModelAttribute("modifyUserBean")UserBean modifyUserBean,
							BindingResult result) {
		if(result.hasErrors()) {
			return "user/modify";
		}
		
		userService.modifyUserInfo(modifyUserBean);
		
		return "user/modify_success";
	}
	
	@GetMapping("/delete")
	public String delete() {
		return "user/delete";
	}
	
	@GetMapping("/delete_pro")
	public String deletePro(HttpSession session) {
		userService.deleteUserInfo(loginUserBean.getUser_idx());
		loginUserBean.setUserLogin(false);
		session.invalidate();
		return "user/delete_success";
	}
	
	// 비밀번호 찾기
	@GetMapping("/lost_password")
	public String lostPassword() {
		return "user/lost_password";
	}
	
	// 메일로 임시 비밀번호 전송 
	@PostMapping("/lost_password_pro")
	public String lostPasswordPro(String to,String user_id) {
		
		
		// 임시 비밀번호 생성
		char pwArray[] = new char[] {
                '1','2','3','4','5','6','7','8','9','0',
                'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
                'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
                '!','@','#','$','%','^','&','*','(',')'};

		String temparayPw = "";
		
		for (int i = 0; i < 10; i++) {
			int selectRandomPw = (int)(Math.random()*(pwArray.length));
			temparayPw += pwArray[selectRandomPw];
		}
		
		// 메일 제목, 내용
		String subject = "WoongMall 임시 비밀번호이입니다.";
		String content = "";
		content += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		content += "<h3 style='color: blue;'>";
		content += " 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
		content += "<p>임시 비밀번호 : ";
		content += temparayPw + "</p></div>";
		
		
		// 보내는 사람,받는사람은 파라미터로 받아주기 
		String from = "gig9150@naver.com";
		
		try {

			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");

			// 메일 내용을 채워줌
			mailHelper.setFrom(from);	// 보내는 사람 셋팅
			mailHelper.setTo(to);		// 받는 사람 셋팅
			mailHelper.setSubject(subject);	// 제목 셋팅
			mailHelper.setText(content,true);	// 내용 셋팅

			// 메일 전송
			mailSender.send(mail);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
        
		return "user/lost_password_success";
	}
	
	// 유효성 검사 등록
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator userValidator = new UserValidator();
		binder.addValidators(userValidator);
	}
	
	
}
