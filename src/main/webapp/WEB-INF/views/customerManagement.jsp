<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>My Music Store</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
   <%--  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
 --%>


</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value="/" /> ">Le's Music Store</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" /> ">Home</a></li>
                        <li><a href="<c:url value="/product/productList" />">Products</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name!=null}">
                        <li><a>Welcome:${pageContext.request.userPrincipal.name}</a></li>
                          <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
                        </c:if>
                         <c:if test="${pageContext.request.userPrincipal.name!='admin'}">
                         <a href="<c:url value="/customer/cart" />">Cart</a>
                        </c:if>
                        
                        <c:if test="${pageContext.request.userPrincipal.name=='admin'}">
                         <a href="<c:url value="/admin/" />">Admin</a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name==null}">
                        <li><a href="<c:url value="/login/" />">Login</a></li>
                        <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

	<div class="container-wrapper">
		<div calss="container">
			<div class="page-header" class="h2.pos_left">
				<h1>Customer Management</h1>
				<p class="lead">This is the customer management page!</p>
			</div>
			<table class="table table-stripped table">
				<thead>
					<tr class="bg-success">
						 <th>Name</th> 
						  <th>EMail</th> 
						   <th>Phone</th> 
						    <th>Username</th> 
						     <th>Enabled</th> 
						
						<th>
					</tr>
				</thead>
				<c:forEach items="${customerList}"  var = "customer">
				<tr>
				      
				<td>${customer.customerName}</td>
				<td>${customer.customerEmail}</td>
				<td>${customer.customerphone}</td>
				<td>${customer.username}</td>
				<td>${customer.enabled}</td>
				</tr>
				</c:forEach>
			</table>
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