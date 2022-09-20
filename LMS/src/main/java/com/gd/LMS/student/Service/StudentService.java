package com.gd.LMS.student.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.LMS.commons.TeamColor;
import com.gd.LMS.student.Mapper.StudentMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class StudentService {
	@Autowired StudentMapper studentMapper;
	
	// 학생이 수강중인 강의리스트
	public List<Map<String, Object>> getStudentLectureList(int studentCode) {
		// 파라미터 디버깅
		log.debug(TeamColor.LCH + "studentCode (service) > " + studentCode);
		
		// 매퍼메서드 호출 후 리턴값 디버깅
		List<Map<String, Object>> studentLectureList = studentMapper.selectStudentLectureList(studentCode);
		log.debug(TeamColor.LCH + "studentLectureList (service) > " + studentLectureList);
		
		return studentLectureList;
	}

	// 학생이 수강중인 강의 상세보기
	public Map<String, Object> getStudentLectureOne(int openedLecNo) {
		// 파라미터 디버깅
		log.debug(TeamColor.LCH + "openedLecNo (service) > " + openedLecNo);
		
		// 매퍼메서드 호출 후 리턴값 디버깅
		Map<String, Object> studentLectureOne = studentMapper.selectStudentLectureOne(openedLecNo);
		log.debug(TeamColor.LCH + "studentLectureOne (service) > " + studentLectureOne);
		
		return studentLectureOne;
	}
	
	// 학생이 수강중인 한 강의 과제리스트
	public List<Map<String, Object>> getStudentAssignmentList(int openedLecNo) {
		// 파라미터 디버깅
		log.debug(TeamColor.LCH + "openedLecNo (service) > " + openedLecNo);
		
		// 매퍼메서드 호출 후 리턴값 디버깅
		List<Map<String, Object>> studentAssignmentList = studentMapper.selectStudentAssignmentList(openedLecNo);
		log.debug(TeamColor.LCH + "studentAssignmentList (service) > " + studentAssignmentList);
		
		return studentAssignmentList;
	}
	
}
