<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html>
<html lang="en">



	<div class="container-wrapper">
		<div calss="container">
			<div class="page-header">
				<h1>Product Inventory</h1>
				<p class="lead">This is the product inventory page</p>
			</div>
			<table class="table table-stripped table">
				<thead>
					<tr class="bg-success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Product Category</th>
						<th>Product Description</th>
						<th>Price</th>
						<th>
					</tr>
				</thead>
				<c:forEach items="${products}"  var = "product">
				<tr>
				<td><img src ="#" alt = "image"/></td>
				<td>${product.productName}</td>
				<td>${product.productCategory}</td>
				<td>${product.productCondition}</td>
				<td>${product.productPrice} INR</td>
				<td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td></tr>
				</c:forEach>
			</table>
			
			<a href="<spring:url value="/admin/productInvdentory/addProduct"/>">Add Product</a>
			<%-- <!-- FOOTER -->
			<footer>
				<p class="pull-right">
					<a href="#">Back to top</a>
				</p>
				<p>
					&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot;
					<a href="#">Terms</a>
				</p>
			</footer>
		</div>
	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>window.jQuery ||
document.write('<script src="<c:url value="/resources/js/jquery.min.js" />"><\/script>')</script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
 
	

</body>

</html>
 --%>
 
 <%@include file="/WEB-INF/views/template/footer.jsp" %>