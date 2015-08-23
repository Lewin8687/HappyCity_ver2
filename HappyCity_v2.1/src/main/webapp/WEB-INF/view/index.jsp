<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title><spring:message code="label.pages.home.title"></spring:message></title>
</head>
<body>
首界面。展示程序特点等。。。。。
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><spring:message
						code="label.pages.home.title"></spring:message></a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/j_spring_security_logout" />"><spring:message
							code="label.pages.logout"></spring:message></a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<h1>
			<spring:message code="label.pages.home.message"></spring:message>
		</h1>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
        This text is only visible to an admin
        <br />
		</sec:authorize>
	</div>
</body>

</html>

