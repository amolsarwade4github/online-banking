<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="resources/static/css/main.css">
    <link rel="stylesheet" href="resources/static/css/signup.css">
</head>
<body>
    <main class="signup-page">
        <h1 class="signup-title">Sign up</h1>
        <form action="signup" method="post" class="signup-form">
            <label for="firstName">First name</label>
            <input type="text" name="firstName" id="firstName">
            <label for="lastName">Last name</label>
            <input type="text" name="lastName" id="lastName">
            <label for="email">E-mail</label>
            <input type="email" name="email" id="email">
            <label for="mobile">Mobile</label>
            <input type="mobile" name="mobile" id="mobile">
            <label for="username">Username</label>
            <input type="text" name="username" id="username">
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
            <button type="submit" class="button">Sign Up</button>
        </form>
    </main>
</body>
</html>
