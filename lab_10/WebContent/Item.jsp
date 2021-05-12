<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Item.js"></script>
</head>

<body>


	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Items Management</h1>
				<form id="formItem" name="formItem">

					Item code: <input id="itemCode" name="itemCode" type="text"
						class="form-control"><br> Item name: <input
						id="itemName" name="itemName" type="text" class="form-control"><br>

					Item price: <input id="itemPrice" name="itemPrice" type="text"
						class="form-control"><br> Item description: <input
						id="itemDesc" name="itemDesc" type="text" class="form-control"><br>

					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input 
						id="hidItemIDSave" name="hidItemIDSave" value="">


				</form>


				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

			</div>

			<br>

			<div id="divItemsGrid">
				<%
				Item itemObj = new Item();
				out.print(itemObj.readItems());
				%>

			</div>
		</div>
	</div>

</body>
</html>