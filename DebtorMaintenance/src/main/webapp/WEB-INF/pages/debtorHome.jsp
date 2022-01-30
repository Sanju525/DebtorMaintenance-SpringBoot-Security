<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Debtor Home</title>
    <%@include file="include/head_tag.html"%>
    <style>
        <%@include file="include/styles.css"%>
    </style>
</head>
<body>
<%@ include file="include/debtor_nav.html"%>

<div class="container">
    <jstl:if test="${submitted != null}">
        <div class="alert alert-success" role="alert">
            ${submitted}
        </div>
    </jstl:if>

    <h2> Welcome, ${name}</h2>
</div>
<%@include file="include/script_tag.html"%>
</body>
</html>
