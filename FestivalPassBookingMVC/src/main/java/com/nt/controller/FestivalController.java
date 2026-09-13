package com.nt.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.model.FestivalPass;

@Controller
public class FestivalController 
{
	@GetMapping("/")
	public String showHome()
	{
		return "festival-form";
	}
	@PostMapping("/register")
	public String displayDetails(Map<String,Object> map,FestivalPass fs)
	{
		map.put("fs", fs);
		return "festival-success";
	}
}
