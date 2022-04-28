package com.jeonguggu.matnam.user.store;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StoreController {
	
	@RequestMapping(value = "user/storeView")
	public String storeView() throws Exception {
		
	

		return "user/store/storeView";
		
	}
	@RequestMapping(value = "user/storeDetail")
	public String storeDetail() throws Exception {
		
		
		
		return "user/store/storeDetail";
		
	}
	
	@RequestMapping(value="user/userReviewForm")
	public String userReviewForm() throws Exception {
		
		
		
		return "user/store/storeReviewForm";
	}

}
