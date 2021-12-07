<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<style>
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	background-color: yellow;
}
}

</style>
</head>
<body class="bg-light container-fluid">
	<div>
		<nav class="navbar navbar-expand-lg navbar-light text-white">
			<a class="navbar-brand disabled" href="#">CUSTOMER FORM</a>
			<button class="navbar-toggler " type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation"></button>
			<button class="navbar-toggler disabled" type="button"
				data-toggle="collapse" data-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-item nav-link" href="/">SaveData</a> <a
						class="nav-item nav-link" href="/search">SearchData</a> <a
						class="nav-item nav-link" href="/update">UpdateData</a> <a
						class="nav-item nav-link" href="/delete">DeleteData</a>
				</div>
			</div>
		</nav>
	</div>
	<div class="container-fluid m-1">
		<h1 style="text-align:center;">CUSTOMER DETAILS</h1><br>
		<c:if test="${empty list }">
			<h1 style="text-align:center;">----No Records Found----</h1><br>
			<br>
			<br>
		</c:if>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Type</th>
					<th scope="col">Phone</th>
					<th scope="col">Country</th>
					<th scope="col">State</th>
					<th scope="col">City</th>
					<th scope="col">Street</th>
					<th scope="col">PinCode</th>
					<th scope="col">Created By</th>
					<th scope="col">Created On</th>
					<th scope="col">Updated By</th>
					<th scope="col">Updated On</th>
				</tr>
			</thead>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.cid }</td>
					<td>${emp.name }</td>
					<td>${emp.customer_type }</td>
					<td>${emp.phone }</td>
					<td>${emp.country }</td>
					<td>${emp.state }</td>
					<td>${emp.city }</td>
					<td>${emp.street }</td>
					<td>${emp.pincode }</td>
					<td>${emp.created_by }</td>
					<td>${emp.created_on }</td>
					<td>${emp.updated_by }</td>
					<td>${emp.updated_on }</td>
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>