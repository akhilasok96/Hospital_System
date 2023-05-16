<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<%@include file="component/allcss.jsp"%>
<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<section class="vh-70 gradient-custom">
	<div class="container h-100">
	  <div class="row d-flex justify-content-center align-items-center m-5 h-100 p-5">
	    <div class="col-12 col-md-6 col-lg-6 col-xl-5">
	      <div class="card bg-white text-primary shadow-lg bg-white"
	        style="border: 1px solid #0275d8; border-radius: 1rem;">
	      <div class="card-body p-5 text-center">
	
	        <div class="mb-md-5 mt-md-4 pb-5">
	
	          <h2 class="fw-normal mb-4">User Login</h2>
	          <c:if test="${not empty succMsg }">
	            <p class="text-center text-success fs-3">${succMsg}</p>
	            <c:remove var="succMsg" scope="session" />
	          </c:if>
	
	          <c:if test="${not empty errorMsg }">
	            <p class="text-center text-danger fs-5">${errorMsg}</p>
	            <c:remove var="errorMsg" scope="session" />
	          </c:if>
	
	          <form action="userLogin" method="post">
	            <div class="form-outline form-primary mb-3">
	              <input style="border: 1px solid #0275d8;" type="email" name="email"
	                class="form-control form-control-lg" placeholder="Email" />
	            </div>
	
	            <div class="form-outline form-primary mb-3">
	              <input style="border: 1px solid #0275d8;" type="password" name="password"
	                class="form-control form-control-lg" placeholder="Password" />
	            </div>
	
	            <button class="btn btn-outline-primary mt-4 btn-lg px-5" type="submit">Login</button>
	          </form>
	
	          <br> Don't have an account? <a href="signup.jsp" class="text-decoration-none"> create one</a>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
</div>
</section>
</body>
</html>