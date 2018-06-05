package com.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bean.FirstBean;
import com.bean.Registration;
import com.model.FirstModel;

@Controller
@SessionAttributes({"session","Usersession"})
public class FirstController 
{
	ModelAndView mv=null;
	
@RequestMapping("/")
public ModelAndView start() 
{
	ModelAndView mv=new ModelAndView("index");
	
	return mv;
}
	
@RequestMapping("/login")
public ModelAndView loginrequest(@ModelAttribute FirstBean fb) 
{
	FirstModel fm=new FirstModel();
	int i=fm.logincheck(fb);
	
		if(i==1)
		{
		 mv=new ModelAndView("AdminHome");
		 mv.addObject("session",fb.getId());
		}else if(i==0)
		{
			 mv=new ModelAndView("index");
			mv.addObject("errormsg","Login Failed");			
		}
	
return mv;
}
	
@RequestMapping("/registerpage")
public ModelAndView registerpage() 
{		
mv=new ModelAndView("registration");
return mv;

}


@RequestMapping("/register")
public ModelAndView ints(@ModelAttribute Registration fb) 
{
	FirstModel fm=new FirstModel();
	int i=fm.insert(fb);
	
		if(i==1)
		{
		 mv=new ModelAndView("registration");
		 
		mv.addObject("done","Registration Done");			

		}else if(i==0)
		{
			 mv=new ModelAndView("registration");
			mv.addObject("errormsg","Registration Failed");			

		}
	
return mv;
}


@RequestMapping("/adminhome")
public ModelAndView adminhome()
{
		mv=new ModelAndView("AdminHome");
	
	return mv;
}

@RequestMapping("/adminlogout")
public ModelAndView logout(HttpSession ht)
{
	ht.invalidate();
	mv=new ModelAndView("index");
	return mv;
}

@RequestMapping("/viewusers")
public ModelAndView viewusers()
{
	ArrayList<Registration> al=(ArrayList<Registration>) new FirstModel().ViewUsers();
	if(al!=null)
	{
		mv=new ModelAndView("show_users");
		mv.addObject("users_arraylist", al);
		
	}
	return mv;
}

@RequestMapping("/Userloginpage")
public ModelAndView userpage() 
{		
mv=new ModelAndView("userlogin");
return mv;

}
@RequestMapping("/Userlogin")
public ModelAndView userloginrequest(@ModelAttribute Registration fb) 
{
	FirstModel fm=new FirstModel();
	int i=fm.userlogin(fb);
	
		if(i==1)
		{
		 mv=new ModelAndView("UserHome");
		 mv.addObject("Usersession",fb.getEmailid());
		}else if(i==0)
		{
			 mv=new ModelAndView("userlogin");
			mv.addObject("errormsg","Login Failed");			
		}
	
return mv;
}
}
