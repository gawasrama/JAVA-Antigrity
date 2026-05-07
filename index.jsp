<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Forward to the main dashboard servlet
    response.sendRedirect(request.getContextPath() + "/dashboard");
%>
