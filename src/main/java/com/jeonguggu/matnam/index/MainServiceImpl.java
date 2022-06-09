package com.jeonguggu.matnam.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDao dao;

	@Override
	public Main selectCountRestaurant() throws Exception {
		return dao.selectCountRestaurant();
	}

	@Override
	public Main selectCountUser() throws Exception {
		return dao.selectCountUser();
	}

	@Override
	public Main selectCountReview() throws Exception {
		return dao.selectCountReview();
	}

}
