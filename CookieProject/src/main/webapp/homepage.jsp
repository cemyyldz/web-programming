<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ana Sayfa</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #411a9b;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 40px;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            font-size: 18px;
        }
    </style>
</head>
<body>

<div class="message-container">
    <h2>Ana Sayfa</h2>
    <% 
        Cookie[] cookies = request.getCookies();
        String username = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                }
            }
        }
        if (username != null) {
    %>
<p>Hoş geldiniz, <%= username %>!</p>
    <% } %>
</div>

</body>
</html>