<%@ page import="com.entity.Doctor"%>
<%@ page import="com.dao.DoctorDao"%>
<%@ page import="com.db.dbconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>
</head>
<body>

<c:if test="${empty docObj}">
	<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<%@include file="navbar.jsp"%>

	<p class="text-center fs-3">Doctor Dashboard</p>

	<%
	Doctor d = (Doctor)session.getAttribute("docObj");
	DoctorDao dao = new DoctorDao(dbconnect.getConn());
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId())%>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>