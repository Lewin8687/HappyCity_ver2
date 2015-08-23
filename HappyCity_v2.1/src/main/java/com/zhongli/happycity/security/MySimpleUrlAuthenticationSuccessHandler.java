package com.zhongli.happycity.security;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

/**
 * 当一个用户认证成功的时候调用的方法
 * 
 * @author zhonglili
 *
 */
@Component("myAuthenticationSuccessHandler")
public class MySimpleUrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private final Logger logger = LoggerFactory.getLogger(getClass());

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(final HttpServletRequest request, final HttpServletResponse response,
			final Authentication authentication) throws IOException {
		request.isUserInRole("ROLE_ADMIN");
		handle(request, response, authentication);
		final HttpSession session = request.getSession(false);
		if (session != null) {
			session.setMaxInactiveInterval(30 * 60);
		}
		clearAuthenticationAttributes(request);
	}

	/**
	 * 根据角色返回指定页面而不是根据权限
	 * 
	 * @param request
	 * @param response
	 * @param authentication
	 * @throws IOException
	 */
	protected void handle(final HttpServletRequest request, final HttpServletResponse response,
			final Authentication authentication) throws IOException {
		boolean isAdmin = request.isUserInRole("ROLE_ADMIN");
		String name = authentication.getName();
		final String targetUrl = determineTargetUrl(isAdmin, name);

		if (response.isCommitted()) {
			logger.debug("Response has already been committed. Unable to redirect to " + targetUrl);
			return;
		}

		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	/**
	 * 认证成功后的跳转的页面，管理员进入后台界面，其他用户进入个人主页
	 * 
	 * @param name
	 * @param authentication
	 * @return
	 */
	protected String determineTargetUrl(final boolean isAdmin, String name) {
		if (isAdmin) {
			// 如果是管理员，返回后台管理界面
			return "/console.html";
		} else {
			// 如果不是管理员，返回到个人中心
			return "/homepage.html?user=" + name;
		}
	}

	protected void clearAuthenticationAttributes(final HttpServletRequest request) {
		final HttpSession session = request.getSession(false);
		if (session == null) {
			return;
		}
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	}

	public void setRedirectStrategy(final RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}

	protected RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}
}