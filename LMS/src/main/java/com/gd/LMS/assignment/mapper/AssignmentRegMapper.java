package com.gd.LMS.assignment.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import com.gd.LMS.vo.Assignment;
import com.gd.LMS.vo.AssignmentReg;
import com.gd.LMS.vo.AssignmentRegImg;


@Mapper
public interface AssignmentRegMapper {
	
	
	// 제출한 과제 전체 리스트
	List<Map<String, Object>> selectAssignmentRegList(Map<String,Object> map);
	
	//제출한 과제 개수 카운트
	int selectAssignmentRegCount(Map<String, Object> map);
	
	// 상세보기
	AssignmentReg selectAssignmentRegOne(Map<String, Object> map);
	
	//과제 제출
	int insertAssignmentReg(AssignmentReg assignmentReg);
		
	// 과제 수정 
	int updateAssignmentReg(AssignmentReg assignmentReg);
		

	// 제출한 과제 삭제 (assignmentReg에서 삭제)
	int deleteAssignmentReg(int assignmentRegNo);
	
	//과제 파일 다운로드
	ResponseEntity<Object> douwnloadFile(String fileName, String realPatth);


	
	
}
