<%-- 使用JSP的隐式变量设置属性 --%>
<%
    // jsp标签内可以正常使用注释
    pageContext.setAttribute("a", "page");
    request.setAttribute("a", "request");
    session.setAttribute("a", "session");
    application.setAttribute("a", "application");
%>
<!doctype html>
<html lang="en">
<head>
    <title>priority</title>
</head>
<body>
    a = ${a} <br/>
</body>
</html>