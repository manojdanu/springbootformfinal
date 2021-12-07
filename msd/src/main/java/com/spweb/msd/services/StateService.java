package com.spweb.msd.services;

import java.util.List;

import com.spweb.msd.entity.State;

public interface StateService {

	public List<State> findByCountry(int id);

}