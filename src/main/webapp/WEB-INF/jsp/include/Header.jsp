
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shivsoftech.apps.bookstore.model.User"%>
<%

User loggedInUser = (User) session.getAttribute("User");

boolean isManager = loggedInUser.isManager();
boolean isCashier = loggedInUser.isCashier();
%>

<p>
    <br>
    <a  target="_blank" style="float: left;">
    <img src="resources/image/FastBanner.png" height="40" alt="Sheridan Book Store" style="margin-bottom: 10px;">
    </a>
</p>
<div style="text-align:right">
    Welcome, <%=loggedInUser.getName() %> 
    <a class="btn btn-info" href="<%=request.getContextPath()%>/logout">Log Out</a>
</div>
<p></p>
<div style="background-color:#003767; padding:3px; "></div>
<p></p>