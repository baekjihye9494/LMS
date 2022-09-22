package com.gd.LMS.member.service;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.LMS.commons.TeamColor;
import com.gd.LMS.member.mapper.EmployeeMapper;
import com.gd.LMS.vo.Employee;
import com.gd.LMS.vo.Student;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class EmployeeService {
	@Autowired EmployeeMapper employeeMapper;
	
	
	// 직원 목록
	public List<Map<String,Object>> getEmployeeList(){
		log.debug(TeamColor.BJH + "getEmployeeList" );
		 List<Map<String, Object>> employeetList = employeeMapper.selectEmployeeList();
		 log.debug(TeamColor.BJH + "employeetList service");
		return employeetList;
	}
		
	//직원 상세보기
	public Map<String, Object> getEmployeeOne(int employeeCode) {
		// 파라미터 디버깅
		log.debug(TeamColor.BJH + "employeeCode (service) > " + employeeCode);
		
		// 매퍼메서드 호출 후 리턴값 디버깅
		Map<String, Object> EmployeeOne = employeeMapper.selectEmployeeOne(employeeCode);
		log.debug(TeamColor.BJH + "getEmployeeOne (service) > " + EmployeeOne);
				
		 return EmployeeOne;
	}
	

	
	

}
