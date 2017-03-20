<%-- 
    Document   : home
    Created on : 12/03/2017, 15:43:49
    Author     : Vinicius Faria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <script>
        </script>
        <style>
            body{
                margin-left: 25%;
                margin-right: 25%;
                text-align: center;
                font-size: 20px;
            }
            
            button {
                background-color: #801515;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 20%;
            }
            button:hover {
                opacity: 0.8;
            }
        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("idUsuario")!= null){%>
                <h1>Seja bem-vindo 
                <c:out value="${sessionScope.idUsuario}" />
                !</h1><br /><br /><br /><br />
                <button type="button" onclick="location.href='logoff.jsp';"  >Sair</button>
            <%}else{%>
                <h1>É preciso estar logado para acessar esta página.</h1><br /><br /><br /><br />
                <button type="button" onclick="location.href='index.html';"  >Sair</button>
            <%}
        %>
    </body>
</html>
