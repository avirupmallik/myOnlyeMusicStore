<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Detail</p>
        </div>

        <form:form commandName="order" class="form-horizontal">
                   
                
			<h3>Shipping Address</h3>

			<div class="form-group">
				<label for="shippingStreet">Street Name</label>
				<form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
			</div>
			
			<div class="form-group">
				<label for="shippingApartmentNumber">Apartment Number</label>
				<form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="shippingState">State</label>
				<form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
			</div>
			
			<div class="form-group">
				<label for="shippingCountry">Country</label>
				<form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
			</div>
			
			<div class="form-group">
				<label for="shippingZipcode">Zipcode</label>
				<form:input path="cart.customer.shippingAddress.zipCode" id="shippingZipcode" class="form-Control" />
			</div>
			
			<input type="hidden" name="_flowExecutionKey"/>
			
			<br><br>
			<button class="btn  tn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
        <input type="submit" value="submit" class="btn btn-default" name="_eventId_shippingDetailCollected"/>
        <button class="btn  tn-default" name="_eventId_cancel">Cancel</button>
</form:form>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
