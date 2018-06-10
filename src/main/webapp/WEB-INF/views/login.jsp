<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<div id=Login">
			<h2>Login with username and password</h2>

			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>

			<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
				<c:if test="${not empty error}">
			<div class="error" style="color: #ff0000";>${error}</div>
			</c:if>
				

				<div class="form-group">
					<label for="userName">User:</label> <input type="text"
						id="userName" name="userName" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" class="form-Control" />
						<br></br>
						 <input type="submit" value="submit" class="btn btn-default">
						  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>