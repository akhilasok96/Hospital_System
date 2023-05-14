<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link me-lg-3" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link me-lg-3" href="doctor.jsp">Doctor</a></li>
				<li class="nav-item"><a class="nav-link me-lg-3" href="view_doctor.jsp">View Doctor</a></li>
				<li class="nav-item"><a class="nav-link me-lg-3" href="patient.jsp">Patient</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>