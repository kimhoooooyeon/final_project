package com.spring.project.food.shop.income;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public interface IIncomeDAO {

	ArrayList<IncomeDTO> search(IncomeSearchDTO search);
	
}
