<%--@elvariable id="user" type="com.codve.User"--%>
<!doctype html>
<html lang="en">
<head>
    <title>User Profile</title>
</head>
<body>
    User Id: ${user.userId} <br/>
    Username: ${user.username}(${user.username.length()} characters) <br/>
    Full name: ${fn:escapeXml(user.firstName) += ' '
                += fn:escapeXml(user.lastName)}
    <br/><br/>
    <b>Permissions(${fn:length(user.permissions)})</b><br/>
    User: ${user.permissions["user"]}<br/>
    Admin: ${user.permissions["admin"]}<br/>
</body>
</html>