<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Admin Dee Caffee</title>
    <link rel="stylesheet" href="../views/assets/css/stylelogin.css">
</head>
<body>
    <div class="login-form">
        <img src="../views/assets/images/dee-logo.png" alt="Logo Dee Cafe">
        <div class="container">
            <div class="main">
                <div class="content">
                    <h2>Log In</h2>
                    <form method="post" action="/login">
                        <input type="text" name="username" placeholder="User Name" required autofocus="">
                        <input type="password" name="password" placeholder="Password" required autofocus="">
                        <button class="btn" type="submit">
                            Login
                        </button>
                    </form>
                </div>
                <div class="form-img">
                    <img src="../views/assets/images/menu-item-01.jpg" alt="...">
                </div>
            </div>
        </div>
    </div>
</body>
</html>