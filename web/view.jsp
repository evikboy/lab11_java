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
                background-image: url('https://images5.alphacoders.com/609/thumb-1920-609173.jpg');
                color : white;
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
                border: 3px solid #ecff00;
                padding: 10px;
                margin: 20px;
            }
            
            #page {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                height: 100%;
                flex-direction: column;
                gap: 100px;
            }
            
            .item {
                border: 3px solid #ecff00;
                padding: 10px;
            }
            
            .item td {
                padding: 10px 10px 0 0;
            }
            
            input[type=submit] {
                margin-top: 10px
            }
            
            .list {
                display: block;
                border-collapse: collapse;
                
            }
            
            .list td, th {
                border: 3px solid #ecff00;
                padding: 10px;
            }
            
            
        </style>
    </head>
    <body>
        <h1>LAB 11</h1>
        <div id="page">
            
            <div class="item">
                <form method="post" action="StudentAdd">
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
                                <td><label for="age">Age</label></td>
                                <td><input id="age" type="text" name="age"></td>
                            </tr>

                            <tr>
                                <td><label for="email">Email</label></td>
                                <td><input id="email" type="email" name="email"></td>
                            </tr>
                            
                            <tr>
                                <td><label for="group">Group</label></td>
                                <td><input id="group" type="text" name="group"></td>
                            </tr>
                            
                            <tr>
                                <td><label for="faculty">Faculty</label></td>
                                <td><input id="faculty" type="text" name="faculty"></td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="submit" name="send" value="Send">
                </form>
            </div>
            
            
            <c:if test="${students.size() > 0}">
                <table class="list">
                    <tr>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Group</th>
                        <th>Faculty</th>
                    </tr>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td><c:out value="${student.getName()}"/></td>
                            <td><c:out value="${student.getSurname()}"/></td>
                            <td><c:out value="${student.getAge()}"/></td>
                            <td><c:out value="${student.getEmail()}"/></td>
                            <td><c:out value="${student.getGroup()}"/></td>
                            <td><c:out value="${student.getFaculty()}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </div>
        
    </body>
</html>
