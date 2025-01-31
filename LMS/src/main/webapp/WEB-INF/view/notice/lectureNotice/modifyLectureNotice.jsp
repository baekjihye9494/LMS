<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Header -->
<c:choose>
	<c:when test="${memberType eq '학생'}">
		<c:import url="/WEB-INF/view/include/studentHeader.jsp"></c:import>	
	</c:when>
	<c:when test="${memberType eq '교수'}">
		<c:import url="/WEB-INF/view/include/professorHeader.jsp"></c:import>	
	</c:when>
	<c:when test="${memberType eq '직원'}">
		<c:import url="/WEB-INF/view/include/employeeHeader.jsp"></c:import>	
	</c:when>
	<c:otherwise>	
	</c:otherwise>
</c:choose>
	
	<!-- Main -->
	<div class="container-xxl flex-grow-1 container-p-y">
		<div class="row">
			<div class="col-sm-9 col-12">
				<h4 class="fw-bold py-3 mb-4">
					<span class="text-muted fw-light">"${memberName}"님 /</span>${lectureName}
				</h4>
			</div>
			<div class="col-sm-3 col-12">
				<a class="btn btn-secondary" href="${pageContext.request.contextPath}/student/studentLectureList?memberCode=${memberCode}" style="float: right;">
					강의리스트
				</a>
			</div>
		</div>
		
		<!-- studentLectureMenu -->
		<div>
			<ul class="nav nav-pills flex-column flex-md-row mb-3">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/student/openedLectureOne?openedLecNo=${openedLecNo}">
					<i class="bx bx-user me-1"></i>
						강의홈
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="${pageContext.request.contextPath}/student/lectureNoticeList?openedLecNo=${openedLecNo}">
					<i class="bx bx-bell me-1"></i> 
						강의공지사항
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/student/lectureQuestionList?openedLecNo=${openedLecNo}">
					<i class="bx bx-link-alt me-1"></i> 
						질문게시판
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/student/assignmentList?openedLecNo=${openedLecNo}&studentCode=${memberCode}">
					<i class="bx bx-link-alt me-1"></i> 
						과제게시판
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/student/lectureAttendanceList?openedLecNo=${openedLecNo}&memberCode=${memberCode}">
					<i class="bx bx-link-alt me-1"></i> 
						강의출석
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="">
					<i class="bx bx-link-alt me-1"></i> 
						강의시험
					</a>
				</li>
			</ul>
		</div>
		<hr class="my-5" />
		<!-- professorLectureMenu -->
		<div>
			<ul class="nav nav-pills flex-column flex-md-row mb-3">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/professor/openedLectureOne?openedLecNo=${openedLecNo}">
					<i class="bx bx-user me-1"></i>
						강의홈
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="${pageContext.request.contextPath}/professor/lectureNoticeList?openedLecNo=${openedLecNo}">
					<i class="bx bx-bell me-1"></i> 
						강의공지사항
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/professor/lectureQuestionList?openedLecNo=${openedLecNo}">
					<i class="bx bx-link-alt me-1"></i> 
						질문게시판
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/professor/assignmentList?openedLecNo=${openedLecNo}&studentCode=${memberCode}">
					<i class="bx bx-link-alt me-1"></i> 
						과제게시판
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/professor/lectureAttendanceList?openedLecNo=${openedLecNo}&memberCode=${memberCode}">
					<i class="bx bx-link-alt me-1"></i> 
						강의출석
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="">
					<i class="bx bx-link-alt me-1"></i> 
						강의시험
					</a>
				</li>
			</ul>
		</div>
		<hr class="my-5" />
		
		<!-- studentLectureOne -->
		<div class="row text-center">
			<div class="card">
				<h5 class="card-header"><strong>강의공지사항</strong></h5>
				<div class="card-body">
					<form action="${pageContext.request.contextPath}/professor/modifyLectureNotice" method="post" id="modifyLectureForm">
						<table class="table table-bordered">
							<tr>
								<th width="20%">작성자</th>
								<td width="30%"><input type="text" name="writer" value="${map.writer}" class="form-control" readonly="readonly"></td>
								<th width="20%">등록일자</th>
								<td width="30%">${map.createDate}</td>
							</tr>
							<tr>
								<th>제목</th>
								<td colspan="5"><input type="text" id="noticeTitle" name="noticeTitle" class="form-control" value="${map.noticeTitle}"></td>
							</tr>
							<tr>
								<th>공지내용</th>
								<td colspan="5">
									<textarea name="noticeContent" id="noticeContent" class="form-control" rows="20px">${map.noticeContent}</textarea>
								</td>
							</tr>
						</table>
						<div style="margin-top: 20px;">
								<input type="hidden" id="lecNoticeNo" name="lecNoticeNo" value="${map.lecNoticeNo}">
								<button type="button" class="btn btn-primary" id="modifyBtn" style="color: #fff;">수정</button>
								<a href="${pageContext.request.contextPath}/professor/lectureNoticeOne?lecNoticeNo=${map.lecNoticeNo}" class="btn btn-primary" style="color: #fff;">취소</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- / Main -->
<script>
	$("#modifyBtn").click(function () {
	    if ($('#noticeTitle').val() == '') {
	         alert("제목을 입력하세요");
	    	 $("#noticeTitle").focus();
	    } else if ($('#noticeContent').val() == '') {
	         alert("내용을 입력하세요");
	         $("#noticeContent").focus();
	    } else {
	    	modifyLectureForm.submit();	
	    }
	});
</script>
<!-- Footer -->
<c:import url="/WEB-INF/view/include/footer.jsp"></c:import> 
