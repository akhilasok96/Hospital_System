<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.dbconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<div class="container-fluid p-3">
		<div class="row">
			
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th class="col">Full Name</th>
									<th class="col">DOB</th>
									<th class="col">Qualification</th>
									<th class="col">Specialization</th>
									<th class="col">Email</th>
									<th class="col">Mob No</th>
									<th class="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
									DoctorDao dao2 = new DoctorDao(dbconnect.getConn());
									List<Doctor> list2 = dao2.getAllDoctor();
									
									for(Doctor d : list2){%>
										<tr>
											<td><%=d.getFullName()%></td>
											<td><%=d.getDob()%></td>
											<td><%=d.getQualification()%></td>
											<td><%=d.getSpecialization()%></td>
											<td><%=d.getEmail()%></td>
											<td><%=d.getMobNo()%></td>
											<td><%=d.getPassword()%></td>
											<td>
												<a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
												<a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>
											</td>
										</tr>
									<%}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>