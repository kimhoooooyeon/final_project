package com.spring.project.food.shop.income;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IncomeService {

	@Autowired(required = false) IIncomeDAO incomeDao;
	
	public ArrayList<IncomeDTO> search(IncomeSearchDTO search) {
		System.out.println("search서비스 실행");
		
		ArrayList<IncomeDTO> incomelist=incomeDao.search(search);;
		
		return incomelist;
		
	}

}
