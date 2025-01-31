package com.gd.LMS.utils;

import com.gd.LMS.vo.Student;

import lombok.Data;

@Data
public class AttendanceVo {
	// 출석 Vo
	// 학생들의 출석 여부를 날짜별로 기록한다.
	private int		lectureNo;				// 강좌 고유번호
	private String	accountId;				// 계정 아이디 (학생)
	private Student	student;				// 학생 Vo
	private String	attendanceDay;			// 출석한 날짜
	private String	attendanceCreatedate;	// 출석부 정보 생성 일시
	private String	attendanceUpdatedate;	// 출석부 정보 업데이트 일시
	private String	attendanceState;		// 출석 상태 (출석, 결석, 외출, 조퇴, 지각)
	private String	attendanceRemark;		// 비고 혹은 사유를 기록
}
