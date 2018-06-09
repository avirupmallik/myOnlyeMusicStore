<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<div class="container-wrapper">
	<div calss="container">
		<div class="page-header">
			<h1>Administration</h1>
			<p class="lead">This is the administration page</p>
		</div>
		<!-- /.container -->
		<h3>
			<a href=<c:url value="/admin/productInventory"/>></a>Product
			Inventory</a>
		</h3>
		<p>Here you cn check,view and modify the product inventory</p>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			window.jQuery
					|| document
							.write('<script src="<c:url value="/resources/js/jquery.min.js" />"><\/script>')
		</script>
		<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>



		</body>
</html>


<%@include file="/WEB-INF/views/template/footer.jsp"%>