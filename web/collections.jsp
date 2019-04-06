<%@ page import="com.codve.User" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<User> users = new ArrayList<>();
    users.add(new User(1002, "Newton", "Isaac", "Newton"));
    users.add(new User(1003, "Galilei", "Galileo", "Galilei"));
    users.add(new User(1004, "Einstein", "Albert", "Einstein"));
    users.add(new User(1005, "Darwin", "Charles", "Darwin"));
    request.setAttribute("users", users);
%>
<!doctype html>
<html lang="en">
<head>
    <title>collections</title>
</head>
<body>
    ${users.stream()
        .filter(u -> fn:contains(u.lastName, "n"))
        .sorted((a, b) -> (rs = a.lastName.compareTo(b.lastName);
            rs == 0 ? a.firstName.compareTo(b.firstName) : rs))
        .map(u -> {"username": u.username, "firstName": u.firstName, "lastName": u.lastName})
        .toList()}
</body>
</html>