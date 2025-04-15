<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>

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

        .result-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.3);
            border-radius: 20px;
            padding: 40px;
            width: 90%;
            max-width: 450px;
            color: white;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .result-card h2 {
            font-weight: 600;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .result-card p {
            font-size: 1.3rem;
            margin-bottom: 30px;
        }

        .btn-home, .btn-logout {
            background-color: #ffe259;
            color: #000;
            font-weight: 600;
            border-radius: 50px;
            padding: 10px 30px;
            transition: 0.3s ease;
            text-decoration: none;
            margin-top: 15px;
        }

        .btn-home:hover, .btn-logout:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

    <div class="result-card">
        <h2>🎉 Your Result</h2>
        <p>Score: <strong>${score}</strong> / <strong>${total}</strong></p>
        <!-- Button to go back to the home page -->
        <!--<a href="index.jsp" class="btn-home">🏠 Back to Home</a>-->
        <!-- Logout button that invalidates the session and redirects to login page -->
        <a href="logout.jsp" class="btn-logout">🚪 Logout</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
