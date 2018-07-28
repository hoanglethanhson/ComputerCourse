<%-- 
    Document   : course
    Created on : Jun 23, 2018, 3:48:46 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <%

        int totalPage = Integer.parseInt(request.getAttribute("totalpage").toString());
        int pagegap = Integer.parseInt(request.getAttribute("pagegap").toString());
        int pageIndex = Integer.parseInt(request.getAttribute("pageindex").toString());
        
    %>
    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <P class="menu-item"><a href="course">Front Page</a></P>
                <b><P class="menu-item"><a href="list">Courses</a></P></b>
                <P class="menu-item"><a href="contact">Contact</a></P>
            </div>
            <div class="content">
                <div class="course">
                    <div class="news-list">
                        <c:forEach var="course" items="${courses}">
                            <div class="news-item">
                                <h2 class="course-title">${course.name}</h2>
                                <img class="news-image" src="${course.image}"/>
                                <p>${course.content}</p>
                            </div>
                        </c:forEach>
                        
                    </div>   
                    <%=util.HtmlHelper.pagger(pageIndex, pagegap, totalPage)%>
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
