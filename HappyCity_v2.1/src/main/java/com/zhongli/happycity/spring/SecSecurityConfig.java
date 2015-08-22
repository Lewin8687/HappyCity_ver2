package com.zhongli.happycity.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@ComponentScan(basePackages = { "com.zhongli.happycity.security" })
@EnableWebSecurity
public class SecSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	private AuthenticationSuccessHandler myAuthenticationSuccessHandler;

	public SecSecurityConfig() {
		super();
	}

	@Override
	protected void configure(final AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authProvider());
	}

	@Override
	public void configure(final WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

	@Override
	protected void configure(final HttpSecurity http) throws Exception {
//		 http
//         // access-denied-page: this is the page users will be
//         // redirected to when they try to access protected areas.
//         .exceptionHandling()
//             .accessDeniedPage( "/403" )
//             .and()
//          // The intercept-url configuration is where we specify what roles are allowed access to what areas.
//             // We specifically force the connection to https for all the pages, although it could be sufficient
//             // just on the login page. The access parameter is where the expressions are used to control which
//             // roles can access specific areas. One of the most important things is the order of the intercept-urls,
//             // the most catch-all type patterns should at the bottom of the list as the matches are executed
//             // in the order they are configured below. So /** (anyRequest()) should always be at the bottom of the list.
//             .authorizeRequests()
//                 .antMatchers( "/j_spring_security_check*", "/login*", "/logout*", "/signin/**", "/signup/**",
// 						"/user/registration*", "/regitrationConfirm*", "/expiredAccount*", "/registration*",
// 						"/badUser*", "/user/resendRegistrationToken*", "/forgetPassword*", "/user/resetPassword*",
// 						"/user/changePassword*", "/emailError*", "/resources/**", "/old/user/registration*",
// 						"/successRegister*","/home*").permitAll()
//                 .antMatchers("/invalidSession*").anonymous().anyRequest().authenticated()
//                 .antMatchers( "/sa/**" ).hasRole( "SUPPERADMIN" )
//                 .antMatchers( "/admin/**" ).hasRole( "ADMIN" )
//                 .antMatchers( "/user/**" ).hasRole( "USER" )
//                 .anyRequest().authenticated()
//                 .and()
//             .requiresChannel()
//                 .anyRequest().requiresSecure()
//                 .and()
//                 // This is where we configure our login form.
//                 // login-page: the page that contains the login screen
//                 // login-processing-url: this is the URL to which the login form should be submitted
//                 // default-target-url: the URL to which the user will be redirected if they login successfully
//                 // authentication-failure-url: the URL to which the user will be redirected if they fail login
//                 // username-parameter: the name of the request parameter which contains the username
//                 // password-parameter: the name of the request parameter which contains the password
//                 .formLogin()
//                 .loginPage("/login.html")
//                 .loginProcessingUrl("/j_spring_security_check")
//                 .defaultSuccessUrl("/homepage.html")
//                 .failureUrl("/login.html?error=true")
//                 .successHandler(myAuthenticationSuccessHandler).usernameParameter("j_username")
//                 .passwordParameter("j_password").permitAll()
//                     .and()
//                     // This is where the logout page and process is configured. The logout-url is the URL to send
//                     // the user to in order to logout, the logout-success-url is where they are taken if the logout
//                     // is successful, and the delete-cookies and invalidate-session make sure that we clean up after logout
//                     .logout()
//                     .logoutUrl("/j_spring_security_logout")
//                     .logoutSuccessUrl( "/logout.html?logSucc=true" )
//                         .deleteCookies( "JSESSIONID" )
//                         .invalidateHttpSession( true )
////                         .permitAll()
//                         .and()
//          
//                     // The session management is used to ensure the user only has one session. This isn't
//                     // compulsory but can add some extra security to your application.
//                         .sessionManagement()
//                         .invalidSessionUrl("/invalidSession.html")
//                         .sessionFixation()
//                         .none()
//                         .maximumSessions( 1 );
//		
		
		
		// @formatter:off
		http
		// access-denied-page: this is the page users will be
		// redirected to when they try to access protected areas.
		.exceptionHandling()
		.accessDeniedPage( "/403" )
		.and()
		.csrf().disable().authorizeRequests()
				.antMatchers("/j_spring_security_check*", "/login*", "/logout*", "/signin/**", "/signup/**",
						"/user/registration*", "/regitrationConfirm*", "/expiredAccount*", "/registration*",
						"/badUser*", "/user/resendRegistrationToken*", "/forgetPassword*", "/user/resetPassword*",
						"/user/changePassword*", "/emailError*", "/resources/**", "/old/user/registration*",
						"/successRegister*","/","/index*")
				.permitAll().
				antMatchers("/invalidSession*").anonymous().anyRequest().authenticated()
				.antMatchers( "/sa/**" ).hasRole( "SUPPERADMIN" ).anyRequest().authenticated()
              .antMatchers( "/admin/**" ).hasRole( "ADMIN" ).anyRequest().authenticated()
              .antMatchers( "/user/**" ).hasRole( "USER" ).anyRequest().authenticated()
				.and()
				.formLogin()
				.loginPage("/login.html").loginProcessingUrl("/j_spring_security_check")
				.defaultSuccessUrl("/homepage.html").failureUrl("/login.html?error=true")
				.successHandler(myAuthenticationSuccessHandler).usernameParameter("j_username")
				.passwordParameter("j_password").permitAll().and().sessionManagement()
				.invalidSessionUrl("/invalidSession.html").sessionFixation().none().and().logout()
				.invalidateHttpSession(false).logoutUrl("/j_spring_security_logout")
				.logoutSuccessUrl("/logout.html?logSucc=true").deleteCookies("JSESSIONID").permitAll();
		// @formatter:on
	}

	// beans

	@Bean
	public DaoAuthenticationProvider authProvider() {
		final DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
		authProvider.setUserDetailsService(userDetailsService);
		authProvider.setPasswordEncoder(encoder());
		return authProvider;
	}

	@Bean
	public PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(11);
	}

}