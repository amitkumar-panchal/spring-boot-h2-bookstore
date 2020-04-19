<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.List"%>
<%@page import="com.shivsoftech.apps.bookstore.model.Book"%>


<%
    List<Book> bookList = (List<Book>) request.getAttribute("BookList");

    %>
    <div id="s-lg-content-34208524" class="  clearfix">
        <div style="background-color:#d9dbdc;  padding:1px;">
        </div>
        <div id="s-lg-content-34207352" class="clearfix">
            <table class="table table-condensed">
            <tbody>
                <tr style="background-color:#d9dbdc;">
                    <td class="ck_border" style="text-align:center; width: 5%;">
                        <strong>ID</strong>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 30%;">
                        <strong>Title</strong>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 15%;">
                        <strong>Author</strong>
                    </td>
                    <td class="ck_border" style="text-align:right; width: 7%;">
                        <strong>Price</strong>
                    </td>
                    <td class="ck_border" style="text-align:right; width: 5%;">
                        <strong>Quantity</strong>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 30%;">
                        <strong>Courses</strong>
                    </td>
                    <td class="ck_border" style="text-align:center; width: 5%;">
                        <strong>Actions</strong>
                    </td>
                </tr>
                <%

                    if (bookList!=null && !bookList.isEmpty()) {

                        for (Book book : bookList) {
                        %>

                <tr >
                    <td class="ck_border" style="text-align:center; width: 5%;">
                        <%=book.getId()%>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 30%;">
                        <%=book.getTitle()%>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 15%;">
                        <%=book.getAuthor()%>
                    </td>
                    <td class="ck_border" style="text-align:right; width: 7%;">
                        <%=book.getPrice()%>
                    </td>
                    <td class="ck_border" style="text-align:right; width: 5%;">
                        <%=book.getStock()%>
                    </td>
                    <td class="ck_border" style="text-align:left; width: 30%;">
                        <%=book.getCourses()%>
                    </td>
                    <td class="ck_border" style="text-align:center; width: 10%;">
                        <% if (isManager || isCashier ) { %>
                        <a class="btn btn-info" style="padding: 0px 4px;" href="<%=request.getContextPath()%>/viewBook?bookId=<%=book.getId()%>" title="View Book Information">V</a>
                        <% }
                            
                           if (isManager) { %>
                        <a class="btn btn-info" style="padding: 0px 4px;" href="<%=request.getContextPath()%>/updateBook?bookId=<%=book.getId()%>" title="Edit Information">E</a>
                        <% }
                            
                           if (isManager) { %>
                        <a class="btn btn-info" style="padding: 0px 4px;" href="<%=request.getContextPath()%>/deleteBook?bookId=<%=book.getId()%>" title="Delete Book">D</a>
                        <% }
                            
                           if (isCashier) { %>
                        <a class="btn btn-info" style="padding: 0px 4px;" href="<%=request.getContextPath()%>/purchaseBook?bookId=<%=book.getId()%>" title="Purchase Book">P</a>
                        <% } %>
                    </td>
                </tr>
                        <%
                        }
                    } else {
                        %>
                <tr>
                    <td class="ck_border" style="text-align:center; width: 100%;" colspan="7">
                        No Books Found
                    </td>
                </tr>
                        <%
                    }
                    
                    if (isManager) { 
                    %>
                <tr>
                    <td class="ck_border" style="text-align:right; width: 100%;" colspan="7">
                        <%-- button class="btn btn-info" type="button" name="btnAdd">Add</button --%>
                        <a class="btn btn-info" href="<%=request.getContextPath()%>/insertBook" title="Add Book">Add</a>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                    <% } %>
            </tbody>
            </table>
       </div>
    </div>

