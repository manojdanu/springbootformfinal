package com.spweb.msd.services;

import java.util.List;

import com.spweb.msd.entity.City;

public interface CityService {

	public List<City> findByState(int id);

}