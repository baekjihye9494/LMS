<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/include/studentHeader.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

	<!-- Main -->
	<div class="container-xxl flex-grow-1 container-p-y">
		<h4 class="fw-bold py-3 mb-4">
			<span class="text-muted fw-light">"이름"님 /</span>강의
		</h4>
		<hr class="my-5" />
		
		<!-- studentLectureList -->
		<div class="card">
			<h5 class="card-header">수강중인 강의</h5>
			<div class="table-responsive text-nowrap">
				<table class="table">
					<caption class="ms-4">List of Lecture</caption>
					<thead>
						<tr>
							<th>강의명</th>
							<th>담당교수</th>
							<th>강의종류</th>
							<th>학점</th>
							<th>ETC</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>강의이름</strong></td>
							<td>교수이름</td>
							<td><span class="badge bg-label-primary me-1">전공종류</span></td>
							<td>Active</td>
							<td>
								<div class="dropdown">
									<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown">
										<i class="bx bx-dots-vertical-rounded"></i>
									</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="">
										<i class="bx bx-book me-1"></i>
											강의상세보기 <!-- 계획서 등의 내용 -->
										</a>
										<a class="dropdown-item" href="">
										<i class="bx bx-book me-1"></i>
											강의관리
										</a>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- / Main -->
	
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
