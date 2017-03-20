<%-- 
    Document   : logoff
    Created on : 19/03/2017, 21:37:24
    Author     : Vinicius Faria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logoff</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <c:redirect url="index.html"/> 
    </body>
</html>
