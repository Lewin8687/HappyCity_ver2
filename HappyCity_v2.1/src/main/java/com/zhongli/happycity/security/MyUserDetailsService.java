package com.zhongli.happycity.security;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhongli.happycity.persistence.dao.RoleRepository;
import com.zhongli.happycity.persistence.dao.UserRepository;
import com.zhongli.happycity.persistence.model.Privilege;
import com.zhongli.happycity.persistence.model.Role;
import com.zhongli.happycity.persistence.model.User;

@Service("userDetailsService")
@Transactional
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private LoginAttemptService loginAttemptService;

	@Autowired
	private HttpServletRequest request;

	public MyUserDetailsService() {
		super();
	}

	// API

	@Override
	public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {
		final String ip = request.getRemoteAddr();
		if (loginAttemptService.isBlocked(ip)) {
			throw new RuntimeException("blocked");
		}

		try {
			final User user = userRepository.findByEmail(email);
			if (user == null) {
				System.out.println("没有此用户，按照游客处理");
				return new org.springframework.security.core.userdetails.User(" ", " ", true, true, true, true,
						getAuthorities(Arrays.asList(roleRepository.findByName("ROLE_GUEST"))));
			}

			return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),
					user.isEnabled(), true, true, true, getAuthorities(user.getRoles()));
		} catch (final Exception e) {
			throw new RuntimeException(e);
		}
	}

	// UTIL

	public final Collection<? extends GrantedAuthority> getAuthorities(final Collection<Role> roles) {
		return getGrantedAuthorities_Roles_and_Privileges(roles);
	}

	private final List<String> getPrivileges(final Collection<Role> roles) {
		final List<String> privileges = new ArrayList<String>();
		final List<Privilege> collection = new ArrayList<Privilege>();
		for (final Role role : roles) {
			collection.addAll(role.getPrivileges());
		}
		for (final Privilege item : collection) {
			privileges.add(item.getName());
		}
		return privileges;
	}

	private final List<GrantedAuthority> getGrantedAuthorities_Roles_and_Privileges(final Collection<Role> roles) {
		final List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (final Role role : roles) {
			authorities.add(new SimpleGrantedAuthority(role.getName()));
		}
		List<String> privileges = getPrivileges(roles);
		for (final String privilege : privileges) {
			authorities.add(new SimpleGrantedAuthority(privilege));
		}
		return authorities;
	}

	/**
	 * 获得权限
	 * 
	 * @param privileges
	 * @return
	 */
	private final List<GrantedAuthority> getGrantedAuthorities_Privileges(final List<String> privileges) {
		final List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (final String privilege : privileges) {
			authorities.add(new SimpleGrantedAuthority(privilege));
		}
		return authorities;
	}

	/**
	 * 获得角色
	 * 
	 * @param roles
	 * @return
	 */
	private final List<GrantedAuthority> getGrantedAuthorities_Roles(final List<String> roles) {
		final List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (final String role : roles) {
			authorities.add(new SimpleGrantedAuthority(role));
		}
		return authorities;
	}

}
