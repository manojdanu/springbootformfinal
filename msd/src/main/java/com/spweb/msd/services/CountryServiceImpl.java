package com.spweb.msd.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spweb.msd.entity.Country;
import com.spweb.msd.repo.CountryRepository;

@Service
public class CountryServiceImpl implements CountryService {

	@Autowired
	private CountryRepository countryRepository;

	@Override
	public Iterable<Country> findAll() {
		return countryRepository.findAll();
	}

	@Override
	public Country findCountry(long id) {
		return countryRepository.findById(id).get();
	}

}