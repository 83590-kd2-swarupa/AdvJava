<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
	<h3>${initParam.appTitle}</h3>

	<jsp:useBean id="res" class="com.sunbeam.bean.candidateList"/>
	${res.fetchCandidates()}
	<table border="1">
		<thead>
		  <tr>
			<th>Id</th>
			<th>Name</th>
			<th>Party</th>
			<th>Votes</th>
			<th>Action</th>
		  </tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${res.candidateList}">
				<tr>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td>${c.party}</td>
					<td>${c.votes}</td>
					<td>
						<a href="editcand.jsp?id=${c.id}">
							<img src="images/edit.png" alt="Edit" width="24" height="24"/>
						</a>
						<a href="delcand.jsp?id=${c.id}">
							<img src="images/delete.png" alt="Del" width="24" height="24"/>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/><br/>
	
	<br/><br/>
	<a href="Announcement.jsp">Announcement</a>	
	<br/><br/>
	<a href="logout.jsp">Sign Out</a>	
</body>
</html>