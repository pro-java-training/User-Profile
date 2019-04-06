<%@ page import="com.codve.User" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<User> users = new ArrayList<>();
    users.add(new User(1002, "Newton", "Issac", "Newton"));
    users.add(new User(1003, "Galileo", "Galileo", "Galileo"));
    users.add(new User(1004, "Albert", "Einstein", "Albert"));
    users.add(new User(1005, "Charles", "Darwin", "Charles"));
    request.setAttribute("users", users);
%>
<!doctype html>
<html lang="en">
<head>
    <title>collections</title>
</head>
<body>
    ${users.stream()
        .filter(u -> fn:contains(u.firstName, "n"))
        .sorted((a, b) -> (rs = a.lastName.compareTo(b.lastName);
            rs == 0 ? a.firstName.compareTo(b.firstName) : rs))
        .map(u -> {"username": u.username, "firstName": u.firstName, "lastName": u.lastName})
        .toList()}
</body>
</html>