package com.spweb.msd.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spweb.msd.entity.City;
import com.spweb.msd.repo.CityRepository;

@Service
public class CityServiceImpl implements CityService {

	@Autowired
	private CityRepository cityRepository;

	@Override
	public List<City> findByState(int id) {
		return cityRepository.findByState(id);
	}

}