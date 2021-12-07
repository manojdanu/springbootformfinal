package com.spweb.msd.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.spweb.msd.entity.CustomerEntity;
import com.spweb.msd.services.CityService;
import com.spweb.msd.services.CountryService;
import com.spweb.msd.services.CustomerService;
import com.spweb.msd.services.StateService;

@Controller
@RequestMapping(value = { "/" })
public class HomeController {

	@Autowired
	private CountryService countryService;

	@Autowired
	private StateService stateService;

	@Autowired
	private CityService cityService;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("countries", countryService.findAll());
		return "index";
	}

	@ResponseBody
	@RequestMapping(value = "loadStatesByCountry/{id}", method = RequestMethod.GET)
	public String loadStatesByCountry(@PathVariable("id") int id) {
		Gson gson = new Gson();
		return gson.toJson(stateService.findByCountry(id));
	}

	@ResponseBody
	@RequestMapping(value = "loadCitiesByState/{id}", method = RequestMethod.GET)
	public String loadCitiesByState(@PathVariable("id") int id) {
		Gson gson = new Gson();
		return gson.toJson(cityService.findByState(id));
	}
	
	@Autowired
	private CustomerService customerService;

	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String saveData(CustomerEntity customerEntity) {
	
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date = simpleDateFormat.format(new Date());
		customerEntity.setCreated_on(date);
		customerService.save(customerEntity);
		return "saveresult";
	}
}