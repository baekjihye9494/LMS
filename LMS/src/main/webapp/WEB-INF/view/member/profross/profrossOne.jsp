<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/include/employeeHeader.jsp"%>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

<!-- Main -->

<div class="container-xxl flex-grow-1 container-p-y">
	
	<!-- EmlpoyeeListOne -->
		<div class="row text-center">
			<div class="card">
				<h5 class="card-header"><strong>${p.memberName}님의 정보</strong></h5>
				<hr class="my-0" />
				
				<div class="card-body">
					<table class="table table-bordered">
				<caption class="ms-4"></caption>
				<thead>
					<tr>
						<th>아이디</th>
						<td>${p.memberId}</td>
					</tr>
					<tr>
						<th>교수코드</th>
						<td>${p.studentCode}</td>
					</tr>
					<tr>
						<th>학과코드</th>
						<td>${p.departmentCode}</td>
					</tr>
					<tr>
						<th>학년</th>
						<td>${p.studentYear}</td>
					</tr>
					<tr>
						<th>학생상태</th>
						<td>${p.studentState}</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${p.memberName}</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${p.memberGender}</td>
					</tr>
					<tr>
						<th>분류</th>
						<td>${p.memberType}</td>
					</tr>
					<tr>
						<th>생일</th>
						<td>${p.memberBirth}</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${p.memberEmail}</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${p.memberAddress}</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>${p.memberContact}</td>
					</tr>
					<tr>
						<th>계정활성화상태</th>
						<td>${p.active}</td>
					</tr>
					<tr>
						<th>계정생성일</th>
						<td>${p.createDate}</td>						
					</tr>
					<tr>
						<th>마지막 수정일</th>
						<td>${p.updateDate}</td>						
					</tr>
				</thead>
			</table><div>				
				<a href="${pageContext.request.contextPath}/member/professor/modifyProfessor?professorCode=${p.professorCode}"
						class="btn btn-warning">수정</a>
				<form action="${pageContext.request.contextPath}/member/professor/removeProfessorMember" method="post">
					<input type="hidden" name="memberId" value="${p.memberId}">
					<button class="btn btn-danger" onclick="deleteBtn()">삭제</button>
				</form>	
				<a href="javascript:window.history.back()"
						class="btn btn-primary">목록</a>
			</div>
		</div>
	</div>
	
	</div>
</div>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>


<script> 
function deleteBtn(){
	alert("삭제하시겠습니까??");
    document.form.submit();
}
</script>