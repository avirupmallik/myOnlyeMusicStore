<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
 
	<div class="container-wrapper">
	 <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="C:\\Users\\Avirup\\image\\${product.productId}.png" /> " alt="image"
                             style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                       <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} USD</h4>
                </div>
            </div>
        </div>

	
		</div>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>