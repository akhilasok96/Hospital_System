<%@page import="com.db.dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 243, 0.3);
	}
	
	.doc-img img{
		margin-left: -60px;
	}
</style>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<section class="py-5 bg-light">
	<div class="container px-5">
	    <h1 class="fw-bolder fs-5 mb-4">Stay Safe, Stay Healthy</h1>
	    <div class="card border-0 shadow rounded-3 overflow-hidden">
	        <div class="card-body p-0">
	            <div class="row gx-0">
	                <div class="col-lg-6 col-xl-5 py-lg-5">
	                    <div class="p-4 p-md-5">
	                        <div class="h2 fw-bolder">Our Vision</div>
	                        <p>To be globally acclaimed for excellent care with personalized approach, and be the most trusted parter of your health and wellness.</p>
	                    </div>
	                </div>
	                <div class="col-lg-6 col-xl-7"><img src="images/hospitalx.jpg" height="350px" width="720px"></div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
<header class="py-5">
	<div class="container px-5">
	    <div class="row justify-content-center">
	        <div class="col-lg-8 col-xxl-6">
	            <div class="text-center my-5">
	                <h1 class="fw-bolder mb-3">Our mission is to bring hope to patients through empathetic healthcare
	                </h1>
	                <p class="lead fw-normal text-muted mb-4">Our immediate agenda is to set up more such dedicated centers for providing wholesome treatment to the patients from all over the country and abroad. We are committed in continually serving the humanity.</p>
	                <a class="btn btn-primary btn-lg" href="signup.jsp">Sign up for an appointment</a>
	            </div>
	        </div>
	    </div>
	</div>
</header>
<section class="py-5" id="features">
	<div class="container px-5 my-5">
	    <div class="row gx-5">
	        <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Key Features of Our Hospital</h2></div>
	        <div class="col-lg-8">
	            <div class="row gx-5 row-cols-1 row-cols-md-2">
	                <div class="col mb-5 h-100">
	                    <h2 class="h5">100% Safety</h2>
	                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
	                </div>
	                <div class="col mb-5 h-100">
	                    <h2 class="h5">Clean Environment</h2>
	                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
	                </div>
	                <div class="col mb-5 mb-md-0 h-100">
	                    <h2 class="h5">Friendly Doctors</h2>
	                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
	                </div>
	                <div class="col h-100">
	                    <h2 class="h5">Medical Research</h2>
	                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</section>

<section class="py-5 bg-light">
	<div class="container px-5 my-5">
	    <div class="text-center">
	        <h2 class="fw-bolder">Our team</h2>
	        <p class="lead fw-normal text-muted mb-5">Dedicated to quality and your wellbeing</p>
	    </div>
	    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
	        <div class="col mb-5 mb-5 mb-sm-0">
	            <div class="text-center">
	                <img class="img-fluid rounded-circle mb-4 px-4"
	                    src="images/danielx.jpg" alt="..." />
	                <h5 class="fw-bolder">Ravi Tharakan</h5>
	                <div class="fst-italic text-muted">CEO &amp; Chairman</div>
	            </div>
	        </div>
	        <div class="col mb-5 mb-5 mb-sm-0">
	            <div class="text-center">
	                <img class="img-fluid rounded-circle mb-4 px-4"
	                    src="images/arunx.jpg" alt="..." />
	                <h5 class="fw-bolder">Arun Prathap</h5>
	                <div class="fst-italic text-muted">Chief Doctor</div>
	            </div>
	        </div>
	        <div class="col mb-5 mb-5 mb-sm-0">
	            <div class="text-center">
	                <img class="img-fluid rounded-circle mb-4 px-4"
	                    src="images/veenax.jpg" alt="..." />
	                <h5 class="fw-bolder">Veena John</h5>
	                <div class="fst-italic text-muted">Chief Doctor</div>
	            </div>
	        </div>
	        <div class="col mb-5 mb-5 mb-sm-0">
	            <div class="text-center">
	                <img class="img-fluid rounded-circle mb-4 px-4"
	                    src="images/ramyax.jpg" alt="..." />
	                <h5 class="fw-bolder">Ramya Rajesh</h5>
	                <div class="fst-italic text-muted">Chief Doctor</div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
<%@include file="component/footer.jsp" %>
</body>
</html> 