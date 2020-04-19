<%-- 
    Document   : index
    Created on : 17-Dec-2019, 09:13:55
    Author     : SysAdmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.getSession().invalidate();

//    String path = "/SearchBook";
//    RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(path);
//    dispatcher.forward(request, response);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <br>
        <a href="SearchBook">Search Book</a>
    </body>
</html>
