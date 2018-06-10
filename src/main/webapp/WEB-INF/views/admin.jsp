<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
	<div calss="container">
		<div class="page-header" >
			<h1 class="h2.pos_left">Administration</h1>
			<p class="lead">This is the administration page</p>
		</div>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Logout</a>
            </h2>
        </c:if>
		<!-- /.container -->
		<h3>
			<a href="<c:url value="/admin/productInventory"/>" class="btn btn-info">Product
			Inventory</a></input>
		</h3>
		<p>Here you can check,view and modify the product inventory</p>

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