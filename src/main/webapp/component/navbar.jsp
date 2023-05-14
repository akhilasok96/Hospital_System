<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-light shadow-sm" id="mainNav">
	<div class="container-fluid">
	    <a class="navbar-brand fw-bold" href="index.jsp"><i
	            class="fa fa-sharp fa-light fa-house-chimney-medical"></i> Hopewell</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
	        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	        Menu
	        <i class="bi-list"></i>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarResponsive">
	        <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
	            <c:if test="${empty userObj }">
	                <li class="nav-item"><a class="nav-link me-lg-3" href="admin_login.jsp"><i
	                            class="fa-solid fa-right-to-bracket"></i> Admin</a></li>
	                <li class="nav-item"><a class="nav-link me-lg-3" href="doctor_login.jsp">Doctor</a></li>
	                <li class="nav-item"><a class="nav-link me-lg-3" href="user_appointment.jsp">Appointment</a>
	                </li>
	                <li class="nav-item"><a class="nav-link me-lg-3" href="user_login.jsp">User</a></li>
	            </c:if>
	
	            <c:if test="${not empty userObj}">
	                <li class="nav-item"><a class="nav-link me-lg-3" href="user_appointment.jsp">Appointment</a>
	                </li>
	                <li class="nav-item"><a class="nav-link me-lg-3" href="view_appointment.jsp">View
	                        Appointment</a>
	                </li>
	                <div class="dropdown">
	                    <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown"
	                        aria-expanded="false">
	                        <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
	                    </button>
	                    <ul class="dropdown-menu">
	                        <li><a class="dropdown-item" href="#">Change Password</a></li>
	                        <li><a class="dropdown-item" href="userLogout">Logout</a></li>
	                    </ul>
	                </div>
	            </c:if>
	        </ul>
	    </div>
	</div>
</nav>