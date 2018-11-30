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