<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.quizapp.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!--<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Welcome, <%= user.getName() %>!</h2>
    <a href="quiz">Take Quiz</a> | 
    <a href="add-question.jsp">Add Question</a> | 
    <a href="logout.jsp">Logout</a>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

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

        .dashboard-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.3);
            border-radius: 20px;
            padding: 40px;
            width: 90%;
            max-width: 500px;
            color: white;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .dashboard-card h2 {
            font-size: 2rem;
            margin-bottom: 30px;
        }

        .btn-dash {
            display: block;
            margin: 10px 0;
            padding: 12px;
            font-size: 1.1rem;
            font-weight: 500;
            border-radius: 50px;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-dash:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        .btn-quiz {
            background-color: #ffe259;
            color: #000;
        }

        .btn-add {
            background-color: #ffffff;
            color: #764ba2;
        }

        .btn-logout {
            background-color: #ff4b5c;
            color: white;
        }
    </style>
</head>
<body>

    <div class="dashboard-card">
        <h2>Welcome, <%= user.getName() %> 👋</h2>
        <a href="quiz" class="btn btn-dash btn-quiz">Take Quiz</a>
        <!--<a href="add-question.jsp" class="btn btn-dash btn-add">Add Question</a>-->
        <a href="logout.jsp" class="btn btn-dash btn-logout">Logout</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
