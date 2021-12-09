package com.springboot.fiveteam.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.sold.Sold;
import com.springboot.fiveteam.domain.sold.SoldRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // 자동으로 Autowired
@Service
public class SoldServiceImpl implements SoldService{

	private final SoldRepository soldRepository;

	@Override
	public List<Sold> itemFindAll() {
		// TODO Auto-generated method stub
		return soldRepository.itemFindAll();
	}
	
	
}
