<!-- 使用jsp的隐式变量, 并设置特性  -->
<%
    application.setAttribute("appAttribute", "app");
    pageContext.setAttribute("pageAttribute", "page");
    session.setAttribute("sessionAttribute", "session");
    request.setAttribute("requestAttribute", "request");
%>
<!doctype html>
<html lang="en">
<head>
    <title>Info</title>
</head>
<body>
    <!-- 使用EL的隐式变量 -->
    <!--pageContext是唯一的实例, 不是map-->
    Remote Address: ${pageContext.request.remoteAddr}<br/>
    Request URL: ${pageContext.request.requestURL}<br/>
    Session ID: ${pageContext.request.session.id}<br/>
    Application Scope: ${applicationScope["appAttribute"]}<br/>
    Page Scope: ${pageScope["pageAttribute"]}<br/>
    Session Scope: ${sessionScope["sessionAttribute"]}<br/>
    Request Scope: ${requestScope["requestScope"]}<br/>
    User Parameter: ${param["user"]}<br/>
    Accept Header: ${header["Accept"]}<br/>
    Session ID: ${cookie["JSESSIONID"].value}<br/>
</body>
</html>