<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="resources/static/css/main.css">
    <link rel="stylesheet" href="resources/static/css/login.css">
</head>
<body>
    <main class="login-page">
        <div class="login-page__container">
            <h1 class="login-page__title">Login to your account</h1>
            <form class="login-page__form" action="/login" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="username">
                <label for="password">Password</label>
                <input type="text" id="password" name="password">
                <button type="submit">Login</button>
            </form>
        </div>
    </main>
</body>
</html>
