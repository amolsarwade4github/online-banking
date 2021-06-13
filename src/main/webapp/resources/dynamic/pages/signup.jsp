<%--
  Created by IntelliJ IDEA.
  User: Amol.Sarwade
  Date: 13-06-2021
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
    <main>
        <h1>Sign up</h1>
        <form action="signup" method="post">
            <label for="email">Email</label>
            <input type="email" name="email" id="email">
            <label for="username">Username</label>
            <input type="text" name="username" id="username">
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
            <button type="submit">Sign Up</button>
        </form>
    </main>
</body>
</html>
