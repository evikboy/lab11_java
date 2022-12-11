<%-- 
    Document   : index
    Created on : 10.12.2022, 16:14:27
    Author     : Kisle
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
  
            html {
                background-image: url('img/download.jfif');
                color : #fff;
                height: 100%;
            }
            
            body {
                margin: 0;
                padding: 0;
                height: 85%;
            }
            
            h1 {
                height: max-content;
                text-align: center;
                border: 2px solid black;
                padding: 10px;
                margin: 20px;
            }
            
            #page {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                height: 100%;
            }
            
            .item {
                border: 2px solid black;
                padding: 10px;
            }
            
            td {
                padding: 10px 10px 0 0;
            }
            
            input[type=submit] {
                margin-top: 10px
            } 
        </style>
    </head>
    <body>
        <h1>LAB 11</h1>
        <div id="page">
            
            <div class="item">
                <form method="post">
                    <table>
                        <tbody>
                            <tr>
                                <td><label for="name">Name</label></td>
                                <td><input id="name" type="text" name="name"></td>
                            </tr>

                            <tr>
                                <td><label for="surname">Surname</label></td>
                                <td><input id="surname" type="text" name="surname"></td>
                            </tr>

                            <tr>
                                <td><label for="email">Email</label></td>
                                <td><input id="email" type="email" name="email"></td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="submit" name="send" value="Send">
                </form>
                
                <c:if test="${not empty param.send}">
                    <c:set var="id" value="${id+1}" scope="application"/>

                    <c:if test="${not empty param.name}">
                        <c:set var="name" value="${param.name}" scope="session"></c:set>
                        <p>
                            Name: ${param.name}
                        </p>
                    </c:if>

                    <c:if test="${not empty param.surname}">
                        <c:set var="surname" value="${param.surname}" scope="session"></c:set>
                        <p>
                            Surname: ${param.surname}
                        </p>
                    </c:if>

                    <c:if test="${not empty param.email}">
                        <c:set var="email" value="${param.email}" scope="session"></c:set>
                        <p>
                            Email: ${param.email}
                        </p>
                    </c:if>
                </c:if>
            </div>
        </div>
    </body>
</html>
