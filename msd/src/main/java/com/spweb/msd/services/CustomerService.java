package com.spweb.msd.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spweb.msd.dao.CustomerDAO;
import com.spweb.msd.entity.CustomerEntity;

@Service
public class CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
		
		public void save(CustomerEntity customerEntity ) {
			customerDAO.saveData(customerEntity);	
		}
	
		public  List<CustomerEntity> delete(CustomerEntity customerEntity ) {
			return customerDAO.deleteData(customerEntity);	
		}
		public void update(CustomerEntity customerEntity ) {
			customerDAO.updateData(customerEntity);	
		}
		public List<CustomerEntity> display(CustomerEntity customerEntity){	
			return customerDAO.searchData(customerEntity);
		}
		public List<CustomerEntity> displayByName(CustomerEntity customerEntity){	
			return customerDAO.searchDataByName(customerEntity);
		}
		
}
