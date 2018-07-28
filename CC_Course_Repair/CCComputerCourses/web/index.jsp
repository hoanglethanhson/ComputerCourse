<%-- 
    Document   : course
    Created on : Jun 23, 2018, 10:26:06 AM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Front Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <b><P class="menu-item"><a href="course">Front Page</a></P></b>
                <P class="menu-item"><a href="list">Courses</a></P>
                <P class="menu-item"><a href="contact">Contact</a></P>
            </div>
            <div class="content">
                <div class="course">
                    <div class="demo">
                        <h2 class="normal-title">${course.name}</h2>
                        <img class="demo-image" src="${course.image}"/>
                        <p>${course.content}</p>
                    </div>
                    <div class="list">
                        <h2 class="normal-title">Program Overview</h2>
                        <table>
                            <c:forEach var="course" items="${courses}">
                                <tr>
                                    <td class="date-td">
                                        <div class="news-date">
                                            <p>${course.dateFormat}</p>
                                        </div> 
                                    </td>
                                    <td class="content-td">
                                        <div class="news-content">
                                            <h2><a href="list" class="course-title">${course.name}</a></h2>
                                            <p>${course.content}</p>
                                        </div>
                                    </td>
                                </tr>                               
                            </c:forEach>
                        </table>
                    </div>               
                </div>
                <div class="right-bar">
                    <%@include file="rightbar.jsp" %>
                </div>
                <div class="border">

                </div>
                <div class="footer">
                    <%@include file="footer.jsp" %>
                </div>
            </div>
        </div>
    </body>
</html>
