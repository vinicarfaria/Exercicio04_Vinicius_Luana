<%-- 
    Document   : logar
    Created on : 14/03/2017, 16:05:42
    Author     : Vinicius Faria
--%>

<%@page import="util.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin-left: 25%;
                margin-right: 25%;
                text-align: center;
                font-size: 20px;
            }
            
            button {
                background-color: #CF7600;
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
        <c:if test="${not empty param.id and not empty param.senha}" >
            <jsp:useBean id="con" class="util.ConBD"/>
            <jsp:setProperty name="con" property="id" value="${param.id}" />
            <jsp:setProperty name="con" property="senha" value="${param.senha}" />
            <%
                try {
                    if (con.getConect()){
                        if (con.consultarId()) {
                            if (con.consultarSenha()){
                                session.setAttribute("idUsuario", request.getParameter("id"));
                                %>
                                <c:redirect url="home.jsp"/> 
                                <%
                            }else{ 
                                out.println("Senha incorreta. <br /><br /><br /><button type=\"button\" onclick=\"location.href='index.html'\">Voltar</button>");
                            }

                        }else{ 
                            out.println("Login inexistente. <br /><br /><br /><button type=\"button\" onclick=\"location.href='index.html'\">Voltar</button>");
                        }
                    }else{
                        out.println("Conexão com Base de Dados não estabelecida. <br /><br /><br /><button type=\"button\" onclick=\"location.href='index.html'\">Voltar</button>");
                    }
                } catch (Exception e){
                    e.printStackTrace();
                }


            %>
        </c:if>
        <c:if test="${empty param.id or empty param.senha }" >
            É preciso fazer autenticação para acessar essa página!<br /><br /><br />
            <button type="button" onclick="location.href='index.html'"  >Voltar</button>
        </c:if>
    </body>
</html>
