<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>Company Home Page</title>
</head>

<body>
<h2>Company Home Page</h2>
<hr>
<p>
    Welcome to the company home page!
</p>

<hr>


<security:authorize access="hasRole('MANAGER')">
    <p>
        <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
    </p>
</security:authorize>


<security:authorize access="hasRole('ADMIN')">
    <p>
        <a href="${pageContext.request.contextPath}/sysadmins">Sysadmins Cruise</a>
    </p>
</security:authorize>

<%-- display user name and role --%>
<p>
    User: <security:authentication property="principal.username"/>
    <br>
    Role: <security:authentication property="principal.authorities" />
</p>

<hr>

<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout">
</form:form>

</body>

</html>