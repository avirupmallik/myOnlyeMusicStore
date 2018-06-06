<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
 
	<div class="container-wrapper">
		<div calss="container">
			<div class="page-header">
				<h1>All Product Detail</h1>
				<p class="lead">Here you can see the detail information of the product</p>
			</div>
			<div class="container">
			<div class="row">
			<div class="col-md-5"><img src="#" alt="image" style="width:260%; height:100px"/></div>
			
			<div class="col-md-5">
			<h3>Product name</h3>
			<p>Product Description</p>
			<p>Condition</p>
			<p>Category</p>
			</div>
			</div>
			</div>
 
 <%@include file="/WEB-INF/views/template/footer.jsp" %>