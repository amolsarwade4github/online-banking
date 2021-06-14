<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <link rel="stylesheet" href="resources/static/css/main.css">
    <link rel="stylesheet" href="resources/static/css/login.css">
</head>
<body>
<main class="login-page">
    <h1 class="login-title">Login to your account</h1>
    <form action="login" method="post" class="login-form" >
        <label for="username">Username</label>
        <input type="text" id="username" name="username">
        <label for="password">Password</label>
        <input type="text" id="password" name="password">
        <input type="checkbox" name="rememberMe" id="rememberMe" />
        <label for="rememberMe"> Remember Me </label>
        <button type="submit" class="button"> Sign In</button>
    </form>
</main>
</body>
</html>
