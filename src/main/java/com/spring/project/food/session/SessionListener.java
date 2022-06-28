package com.spring.project.food.session;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


import javax.servlet.annotation.WebListener;

@WebListener
public class SessionListener implements HttpSessionListener {
	
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		se.getSession().toString();
		System.out.println(se.getSession().toString()+ "세션생성시 발생하는 이벤트");
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}

}
