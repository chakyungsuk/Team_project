package com.jeonguggu.matnam.user.buddy;

import java.util.List;

public interface BuddyService {

//	친구 목록 조회
	public List<Buddy> selectListFriend(BuddyVo vo) throws Exception;
	
//	차단 친구 목록 조회
	public List<Buddy> selectListFriendBlock(BuddyVo vo) throws Exception;
	
//	받은 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) throws Exception;
	
//	보낸 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) throws Exception;
	
}
