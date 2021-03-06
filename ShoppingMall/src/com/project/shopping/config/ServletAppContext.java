package com.project.shopping.config;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.project.shopping.beans.UserBean;
import com.project.shopping.interceptor.CheckLoginInterceptor;
import com.project.shopping.interceptor.TopMenuInterceptor;
import com.project.shopping.mapper.AccountMapper;
import com.project.shopping.mapper.GoodsMapper;
import com.project.shopping.mapper.OrdersMapper;
import com.project.shopping.mapper.TopMenuMapper;
import com.project.shopping.mapper.UserMapper;
import com.project.shopping.service.TopMenuService;

@Configuration
@EnableWebMvc
@ComponentScan("com.project.shopping")
@PropertySource("/WEB-INF/properties/database.properties")
@MapperScan("com.project.shopping.mapper")
public class ServletAppContext implements WebMvcConfigurer {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Value("${database.classname}")
	private String classname;
	
	@Value("${database.url}")
	private String url;
	
	@Value("${database.username}")
	private String username;
	
	@Value("${database.password}")
	private String password;
	
	@Autowired
	private TopMenuService topMenuService;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	//db connection
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(classname);
		source.setUrl(url);
		source.setUsername(username);
		source.setPassword(password);
		
		return source;
	}
	
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception{
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}
	
	//?????? ?????? 
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory){
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<GoodsMapper> getGoodsMapper(SqlSessionFactory factory){
		MapperFactoryBean<GoodsMapper> factoryBean = new MapperFactoryBean<GoodsMapper>(GoodsMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<OrdersMapper> getOrdersMapper(SqlSessionFactory factory){
		MapperFactoryBean<OrdersMapper> factoryBean = new MapperFactoryBean<OrdersMapper>(OrdersMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<TopMenuMapper> getTopMenuMapper(SqlSessionFactory factory){
		MapperFactoryBean<TopMenuMapper> factoryBean = new MapperFactoryBean<TopMenuMapper>(TopMenuMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<AccountMapper> getAccountMapper(SqlSessionFactory factory){
		MapperFactoryBean<AccountMapper> factoryBean = new MapperFactoryBean<AccountMapper>(AccountMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	
	//jsp?????? ?????????????????? ?????????????????? message ??????
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
	}
	
	//interceptor ??????
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		
		WebMvcConfigurer.super.addInterceptors(registry);
		
		//?????? ????????? ????????????
		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(topMenuService);
		registry.addInterceptor(topMenuInterceptor).addPathPatterns("/**");
		
		//????????? ?????? ???????????? ?????? 
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		registry.addInterceptor(checkLoginInterceptor).addPathPatterns("/user/modify","/user/logout");
	}
	
	
	
	
	
	
}
