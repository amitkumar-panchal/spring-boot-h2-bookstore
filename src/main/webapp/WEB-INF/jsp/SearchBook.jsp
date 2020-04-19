<%@page import="java.util.List"%>
<%@page import="com.shivsoftech.apps.bookstore.model.Book"%>

    <div id="s-lg-content-34207352" class="clearfix">
        <form action="searchBook" id="searchForm" method="post" class="form-horizontal" novalidate="">
        <table class="table table-condensed">
        <tbody>
            <tr>
                <td class="ck_border" style="text-align:right; width: 3%;">
                    <strong>ID : </strong>
                </td>
                <td class="ck_border" style="text-align:left; width: 4%;">
                    <input type="text" name="txtBookId" id="txtBookId" value="" maxlength="11" size="8"/>
                </td>
                <td class="ck_border" style="text-align:right; width: 8%;">
                    <strong>Quantity : </strong>
                </td>
                <td class="ck_border" style="text-align:left; width: 12%;">
                    <input type="text" name="txtQtyStart" id="txtQtyStart" value="" size="3" maxlength="5"/>
                    &nbsp;&nbsp;
                    <input type="text" name="txtQtyEnd" id="txtQtyEnd" value="" size="3" maxlength="5"/>
                </td>
                <td class="ck_border" style="text-align:right; width: 4%;">
                    <strong>Title : </strong>
                </td>
                <td class="ck_border" style="text-align:left; width: 20%;">
                    <input type="text" name="txtBookTitle" id="txtBookTitle" value="" size="35" maxlength="50"/>
                </td>
                <td class="ck_border" style="text-align:right; width: 5%;">
                    <strong>Author : </strong>
                </td>
                <td class="ck_border" style="text-align:left; width: 20%;">
                    <input type="text" name="txtBookAuthor" id="txtBookAuthor" value="" size="30" maxlength="30"/>
                </td>
            </tr>
            <% if (isManager || isCashier ) { %>
            <tr>
                <td class="ck_border" style="text-align:right; width: 100%;" colspan="8">
                    <input type="hidden" name="param_action" value="search" />
                    <button class="btn btn-info" type="submit" name="btnSearch">Search</button>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <% } %>
        </tbody>
        </table>
        </form>
    </div>

