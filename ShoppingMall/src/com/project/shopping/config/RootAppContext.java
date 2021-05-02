package com.project.shopping.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.context.annotation.SessionScope;

import com.project.shopping.beans.UserBean;

@Configuration
public class RootAppContext {

	// 로그인 정보를 관리하는 객체
	@Bean(name = "loginUserBean")
	@SessionScope
	public UserBean loginUserBean() {
		return new UserBean();
	}
	
	@Bean(name = "mailSender")
	public JavaMailSenderImpl mailSender() {
		JavaMailSenderImpl jsi = new JavaMailSenderImpl();
		jsi.setHost("smtp.naver.com");
		jsi.setPort(465);
		jsi.setUsername("gig9150@naver.com");
		jsi.setPassword("2768ssac@");
		jsi.setDefaultEncoding("utf-8");
		Properties properties = jsi.getJavaMailProperties();
		properties.setProperty("mail.smtp.auth","true");
		properties.setProperty("mail.debug", "true");
		properties.setProperty("mail.smtp.starttls.enable","true");
		properties.setProperty("mail.smtps.ssl.checkserveridentity", "true");
		properties.setProperty("mail.smtps.ssl.trust","*");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		return jsi;
	}
	
}
