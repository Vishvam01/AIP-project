<%-- 
    Document   : logout
    Created on : 10 Apr 2025, 12:03:25
    Author     : Vishvam 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;600&display=swap" rel="stylesheet">

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

        .logout-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            border-radius: 20px;
            padding: 50px;
            text-align: center;
            color: white;
            max-width: 450px;
            width: 90%;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .logout-card h1 {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .btn-home {
            margin-top: 25px;
            padding: 10px 25px;
            background-color: #ffe259;
            color: #000;
            border-radius: 30px;
            font-weight: 600;
            text-decoration: none;
            transition: 0.3s ease;
        }

        .btn-home:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

    <div class="logout-card">
        <h1>👋 Thanks For Attempting!</h1>
        <!-- Link to Home Page (index.jsp) -->
        <!--<a href="index.jsp" class="btn-home">🏠 Back to Home</a>-->
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
