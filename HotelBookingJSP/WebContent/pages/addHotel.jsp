<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
	import="com.hotelmanagement.dto.UserBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
	<%@include file="/WEB-INF/css/style.css"%>
</style>
</head>
<body>
	<h1>Hotel Booking Management System</h1>
	<%UserBean userBean = (UserBean)session.getAttribute("userBean");%> 
	<h3>Welcome <%=userBean.getUser_name() %></h3>
	<form action="login" method="post">
		<table align="center">
			<col width="150">
  			<col width="200">
		<tr>
			<td>Hotel Name:<span class="required">*</span></td>
			<td><input type="text" name="hotel_name"  required=""/></td>
		</tr>
		<tr>
			<td>City:<span class="required">*</span></td>
			<td><input type="text" name="city"   required=""/></td>
		</tr>
		<tr>
			<td>Address:<span class="required">*</span></td>
			<td><input type="text" name="address" required=""/></td>
		</tr>
		<tr>
			<td>Description:<span class="required">*</span></td>
			<td><input type="text" name="description"  required=""/></td>
		</tr>
		<tr>
			<td>Avg rate per night<span class="required">*</span></td>
			<td><input type="text" name="avg_rate_per_night"  required=""/></td>
		</tr>
		<tr>
			<td>Phone No 1:<span class="required">*</span></td>
			<td><input type="text" name="phone_no1" required=""/></td>
		</tr>
		<tr>
			<td>Phone No 2:<span class="required">*</span></td>
			<td><input type="text" name="phone_no2"  required=""/></td>
		</tr>
		<tr>
			<td>Rating:<span class="required">*</span></td>
			<td><input type="text" name="rating"  required=""/></td>
		</tr>
		<tr>
			<td>Email:<span class="required">*</span></td>
			<td><input type="text" name="email" title="Please enter valid email address" required=""/></td>
		</tr>
		<tr>
			<td>Fax:<span class="required">*</span></td>
			<td><input type="text" name="fax" required=""/></td>
		</tr>
		
	</table><br>
		<input type="submit" name="submit" value="Submit Hotel Details"/><br><br>
		
	</form>
	<form action="login" method="post">
		<input type="submit" name="submit" value="Back to menu"/>
	</form>
</body>
</html>