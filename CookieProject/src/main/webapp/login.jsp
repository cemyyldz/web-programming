<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Formu</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Login Formu</h2>
    <form action="LoginServlet" method="post" class="login-form">
        <div class="input-group">
            <label for="username">Kullanıcı Adı:</label>
            <input type="text" id="username" name="username">
        </div>
        <div class="input-group">
            <label for="password">Şifre:</label>
            <input type="password" id="password" name="password">
        </div>
        <div class="input-group">
            <div class="checkbox-wrapper">
                <input type="checkbox" id="rememberMe" name="rememberMe">
                <label for="rememberMe">Beni Hatırla</label>
            </div>
        </div>
        <div class="input-group">
            <input type="submit" value="Giriş Yap" class="btn-login">
        </div>
    </form>
</body>
</html>