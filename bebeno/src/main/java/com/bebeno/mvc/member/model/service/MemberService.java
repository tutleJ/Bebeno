package com.bebeno.mvc.member.model.service;

import com.bebeno.mvc.member.model.vo.Member;

//@Transactional
public interface MemberService {

	Member findMemberById(String id);
	
	Member login(String id, String password);

	int save(Member member);

	Boolean isDuplicateID(String userId);

	int delete(int no);
	
}
