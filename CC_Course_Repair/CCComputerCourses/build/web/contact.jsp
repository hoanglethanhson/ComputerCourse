<%-- 
    Document   : contact
    Created on : Jun 23, 2018, 7:37:39 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <P class="menu-item"><a href="course">Front Page</a></P>
                <P class="menu-item"><a href="list">Courses</a></P>
                <b><P class="menu-item"><a href="contact">Contact</a></P></b>
            </div>
            <div class="content">
                <div class="course">
                    <h2 class="normal-title">Contact</h2>
                    <div class="info">
                        <h3 class="normal-title">CC Computer Course</h3>
                        <p>Address : ${info.address}</p>
                        <p>City : ${info.city}</p>
                        <p>Country : ${info.country}</p>
                        <p>Tel : ${info.tel}</p>
                        <p>Email : ${info.email}</p>
                    </div>
                    <div class="form">
                        <p>Write your message here. Fill out the form:</p>
                        <form action="contact" method="POST">
                            <input type="text" name="name" value="${name}" placeholder="Write your name here" required/>
                            <input type="email" name="email" value="${email}" placeholder="Write your email here" required/>
                            <textarea name="message" placeholder="Write your message here" value="${message}"></textarea>
                            <input type="submit" value="${send}">
                        </form>
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
