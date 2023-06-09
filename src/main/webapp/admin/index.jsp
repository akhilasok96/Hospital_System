<%@page import="com.db.dbconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<c:if test="${ empty adminObj }">
	<c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-primary" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<%
			DoctorDao dao = new DoctorDao(dbconnect.getConn());
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="card bg-primary paint-card">
					<div class="card-body text-center text-white">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card bg-warning paint-card">
					<div class="card-body text-center text-white">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br><%=dao.countUSer()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card bg-success paint-card">
					<div class="card-body text-center text-white">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br><%=dao.countAppointment()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-2">
				<div class="card bg-danger paint-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-white">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specializations <br><%=dao.countSpecialist()%>
						</p>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
	
<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<form action="../addSpecialist" method="post">
	      		<div class="from-group">
	      			<label>Enter Specialization</label>
	      			<input type="text" name="specName" class="form-control">
	      		</div>
	      		<div class="text-center mt-3">
	      			<button type="submit" class="btn btn-primary">Add</button>
	      		</div>
	      	</form>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>