package com.gd.LMS.vo;

import lombok.Data;

@Data
public class LectureQuestion {
	
	private int lecQuestionNo;		//강의질문번호
	private int studentLecNo;		//학생수강번호
	private String questionTitle;	//질문제목
	private String questionContent;	//질문내용
	private String answerY;			//답변여부
	private String createDate;		//생성일
	private String updateDate;		//수정일

}
