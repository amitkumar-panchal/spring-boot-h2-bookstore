
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    boolean isManager = request.isUserInRole("Manager");
    boolean isCashier = request.isUserInRole("Cashier");
    %>

<p>
    <br>
    <a  target="_blank" style="float: left;">
    <img src="./include/image/FastBanner.png" height="40" alt="Sheridan Book Store" style="margin-bottom: 10px;">
    </a>
</p>
<div style="text-align:right">
    Welcome, <%=request.getRemoteUser() %> 
    <a class="btn btn-info" href="<%=request.getContextPath()%>/LogOut.jsp">Log Out</a>
</div>
<p></p>
<div style="background-color:#003767; padding:3px; "></div>
<p></p>