package com.teammusika.musika.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private UserDetailsService userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		 http.authorizeRequests()
	     .antMatchers("/").permitAll()
	     .antMatchers("/login").permitAll()
	     .antMatchers("/registration").permitAll()
	     .antMatchers("/user","/user/**").hasAuthority("MUSIKAUSER")
	     .antMatchers("/admin","/admin/**").hasAuthority("MUSIKAADMIN")
	   
	     .anyRequest()
//	     	.authenticated()
	     	.permitAll()
		.and()
			.formLogin()
				.loginPage("/login")
				.defaultSuccessUrl("/default", true) // home
				.failureUrl("/login?error=true")
		.and()
			.logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.logoutSuccessUrl("/")
		.and()
			.exceptionHandling()
				.accessDeniedPage("/AccessDenied") 
		.and().csrf().disable();
	}

	 @Override
	 public void configure(WebSecurity webSecurity) throws Exception{		 
		 webSecurity.ignoring()
			.antMatchers("/resources/**","/static/**","/css/**","/js/**","/images/**","/img/**","/fonts/**");
	 }
}
