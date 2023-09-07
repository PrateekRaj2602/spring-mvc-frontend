package com.springmvc.frontend.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.frontend.model.Employee;

@Controller
public class MVCController {
	@Autowired
	RestTemplate rt;
	final String url="http://localhost:8080/api/v1/employees";
	
//	@RequestMapping("/greet")
//	public ModelAndView processGreet()
//	{
//		String str="Hello World!!!";
//		ModelAndView mv=new ModelAndView();
//		mv.addObject("message", str);
//		mv.setViewName("view1");
//		return mv;
//	}
	@RequestMapping("/home")
	public ModelAndView processHome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@RequestMapping("/showAll")
	public ModelAndView processFetchAll()
	{
		List<Employee> obj=Arrays.asList(rt.getForObject(url, Employee[].class));
		ModelAndView mv=new ModelAndView();
		mv.addObject("employeeList", obj);
		mv.setViewName("employeeDetails");
		return mv;
	}
	
	@PostMapping("/insertEmployee")
	public ModelAndView processInsertTrainee(@ModelAttribute Employee emp)
	{
//		System.out.println(emp);
//		System.out.println("Insert a Employee");
		Employee obj=rt.postForObject(url,emp, Employee.class);
		//System.out.println(obj);
		//t.setId(obj.getId());
		ModelAndView mv=new ModelAndView();
		mv.addObject("employee", obj);
		mv.setViewName("successInsert");
		return mv;
	}
	
	@GetMapping	("/showById")
	public ModelAndView processFetchOne(@RequestParam Integer employeeId)
	{
		Employee emp= rt.getForObject(url + "/" + employeeId, Employee.class);
		List<Employee> obj = new ArrayList<>();
		obj.add(emp);
		ModelAndView mv=new ModelAndView();
		mv.addObject("employeeList", obj);
		mv.setViewName("employeeDetails");
		return mv;
	}
//	@GetMapping	("/showView")
//	public ModelAndView showView(@RequestParam Integer employeeId)
//	{
//		Employee obj= rt.getForObject(url + "/" + employeeId, Employee.class);
////		List<Employee> obj = new ArrayList<>();
////		obj.add(emp);
//		ModelAndView mv=new ModelAndView();
//		mv.addObject("employee", obj);
//		mv.setViewName("view");
//		return mv;
//	}
	
	@PostMapping("/UpdateById")
	public ModelAndView processUpdateOne(@ModelAttribute Employee emp)
	{
		
		rt.put(url,emp);
		ModelAndView mv=new ModelAndView();
		mv.addObject("employee", emp);
		mv.setViewName("successUpdate");
		return mv;
	}
	
	@PostMapping("/deleteById")
	public ModelAndView processDeleteOne(@RequestParam Integer employeeId)
	{
		rt.delete(url + "/" + employeeId);
		String str=""+employeeId;
		ModelAndView mv=new ModelAndView();
		mv.addObject("message", str);
		mv.setViewName("successDelete");
		return mv;
	}
}
