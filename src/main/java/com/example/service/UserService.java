package com.example.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.mapper.UserMapper;

@Service
public class UserService implements UserDetailsService{
	
	static class SimplePasswordEncoder implements PasswordEncoder {
		@Override
		public String encode(CharSequence rawPassword) {
			return rawPassword.toString();
		}
		
		@Override
		public boolean matches(CharSequence rawPassword, String encodedPassword) {
			return encodedPassword.equals(encode(rawPassword));
		}
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new SimplePasswordEncoder();
	}
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		var member = mapper.selectById(username);
		
		if (member == null)
			throw new UsernameNotFoundException(username + "Not Found!");
		
		var auth = AuthorityUtils.createAuthorityList(member.getUserRoles());
		var user = new User(username, member.getUserPassword(), auth);
		
		return user;
	}
	
	public UserDetails loadUserByUsername2(String username) throws UsernameNotFoundException {
		
		if (!username.equals("alpha"))
			throw new UsernameNotFoundException(username + "Not Found!");
		
		var auth = AuthorityUtils.createAuthorityList("USER");
		var user = new User(username, "1234", auth);
		
		return user;
	}


}
