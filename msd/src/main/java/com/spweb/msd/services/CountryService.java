package com.spweb.msd.services;

import com.spweb.msd.entity.Country;

public interface CountryService {

	public Iterable<Country> findAll();

	public Country findCountry(long id);

}