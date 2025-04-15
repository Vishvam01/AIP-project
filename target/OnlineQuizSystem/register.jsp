<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!--<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Register</h2>
    <form action="register" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <button type="submit">Register</button>
    </form>
    <p style="color:red">${error}</p>
</body>
</html>-->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.3);
            border-radius: 20px;
            padding: 40px;
            width: 90%;
            max-width: 400px;
            color: white;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .register-card h2 {
            margin-bottom: 30px;
            font-size: 2rem;
            font-weight: 600;
        }

        .form-control {
            margin-bottom: 15px;
            border-radius: 10px;
        }

        .btn-register {
            background-color: #ffe259;
            color: #000;
            border-radius: 50px;
            padding: 10px 20px;
            font-weight: 500;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn-register:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        .error-msg {
            color: #ffbaba;
            font-weight: 500;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <div class="register-card">
        <h2>Create Your Account 🚀</h2>
        <form action="register" method="post">
            <input type="text" name="name" placeholder="Full Name" class="form-control" required>
            <input type="email" name="email" placeholder="Email" class="form-control" required>
            <input type="password" name="password" placeholder="Password" class="form-control" required>
            <button type="submit" class="btn btn-register">Register</button>
        </form>
        <p class="error-msg">${error}</p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

