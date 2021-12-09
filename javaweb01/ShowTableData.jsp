<%@page import="java.util.Objects" %>
<%

    boolean isShowForm = true;

    String strRows = null;
    String strCols = null;
    String result = "";

    strRows = request.getParameter("tablerows");
    strCols = request.getParameter("tablecols");

    if (!(Objects.isNull(strRows)) && !(Objects.isNull(strCols))) {
        result = "Result: tablerows=" + strRows + ", tablecols=" + strCols;
        isShowForm = false;
    }

    if (isShowForm) {
%>
<form action="ShowTableData.jsp">
    <input type='text' name='tablerows'/>
    <input type='text' name='tablecols'/>
    <input type='submit' value='SEND'/>
        <%
}
    out.write(result);
%>

