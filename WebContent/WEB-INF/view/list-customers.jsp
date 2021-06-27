<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
<!DOCTYPE HTML>

<html>
<head>
<title>List Customers</title>
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>List Customers - coming soon ....</h2>
		</div>
	</div>
	<br>
	<div id="Container">
		<div id="content">
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<C:forEach var="tempCustomer" items = "${customers}">
					<tr>
						<td>${tempCustomer.firstname}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
					</tr>
				</C:forEach>
			</table>
		</div>
	</div>

</body>
</html>