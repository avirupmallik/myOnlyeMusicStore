<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
 
	<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method ="post" commandName="product">
        <div class="form-group">
        <label for ="name">Name</label>
        <form:input path="productName" id ="name" class="form-Control"/>
        </div>
          <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Instrument" />Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Record" />Record</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Accessory" />Accessory</label>
        </div>
         <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="New" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Available" />Available</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Unavailable" />Unavailable</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>  <form:errors path="unitInStock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div> 

       <%--  <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div> --%>

        <br><br>
       <input type="submit" value="submit" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-danger">Cancel</a>
        </form:form>
		<%@include file="/WEB-INF/views/template/footer.jsp"%>