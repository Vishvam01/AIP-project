


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.quizapp.model.Question" %>
<%
    List<Question> questions = (List<Question>) request.getAttribute("questions");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>

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
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding-top: 50px;
        }

        .quiz-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.3);
            border-radius: 20px;
            padding: 40px;
            width: 90%;
            max-width: 800px;
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        h2 {
            text-align: center;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .question {
            margin-bottom: 25px;
        }

        .question p {
            font-weight: 500;
            margin-bottom: 10px;
        }

        .form-check {
            margin-left: 15px;
        }

        .btn-submit {
            background-color: #ffe259;
            color: #000;
            border-radius: 50px;
            font-weight: 600;
            padding: 10px 30px;
            display: block;
            margin: 30px auto 0 auto;
            transition: 0.3s;
        }

        .btn-submit:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

    <div class="quiz-card">
        <h2>Quiz Time 🚀</h2>
        <form action="submit-quiz" method="post">
            <%
                int index = 1;
                for (Question q : questions) {
            %>
                <div class="question">
                    <p><%= index + ". " + q.getQuestion() %></p>
                    <div class="form-check">
                        <input type="radio" name="q<%= index %>" value="option1" class="form-check-input" required>
                        <label class="form-check-label"><%= q.getOption1() %></label><br>
                        <input type="radio" name="q<%= index %>" value="option2" class="form-check-input">
                        <label class="form-check-label"><%= q.getOption2() %></label><br>
                        <input type="radio" name="q<%= index %>" value="option3" class="form-check-input">
                        <label class="form-check-label"><%= q.getOption3() %></label><br>
                        <input type="radio" name="q<%= index %>" value="option4" class="form-check-input">
                        <label class="form-check-label"><%= q.getOption4() %></label>
                    </div>
                    <input type="hidden" name="correct<%= index %>" value="<%= q.getCorrectOption() %>">
                </div>
            <%
                    index++;
                }
            %>

            <!-- Extra Static MCQs -->
            <div class="question">
                <p><%= index + ". What is the full form of API?" %></p>
                <div class="form-check">
                    <input type="radio" name="q<%= index %>" value="option1" class="form-check-input" required>
                    <label class="form-check-label">Application Programming Interface</label><br>
                    <input type="radio" name="q<%= index %>" value="option2" class="form-check-input">
                    <label class="form-check-label">Advanced Program Interaction</label><br>
                    <input type="radio" name="q<%= index %>" value="option3" class="form-check-input">
                    <label class="form-check-label">Applied Protocol Interface</label><br>
                    <input type="radio" name="q<%= index %>" value="option4" class="form-check-input">
                    <label class="form-check-label">Automated Plugin Interface</label>
                </div>
                <input type="hidden" name="correct<%= index %>" value="option1">
            </div>
            <%
                index++;
            %>

            <div class="question">
                <p><%= index + ". What is the full form of SOAP?" %></p>
                <div class="form-check">
                    <input type="radio" name="q<%= index %>" value="option1" class="form-check-input" required>
                    <label class="form-check-label">Simple Object Access Protocol</label><br>
                    <input type="radio" name="q<%= index %>" value="option2" class="form-check-input">
                    <label class="form-check-label">Secure Object Access Program</label><br>
                    <input type="radio" name="q<%= index %>" value="option3" class="form-check-input">
                    <label class="form-check-label">Service Oriented Architecture Protocol</label><br>
                    <input type="radio" name="q<%= index %>" value="option4" class="form-check-input">
                    <label class="form-check-label">Structured Object Application Protocol</label>
                </div>
                <input type="hidden" name="correct<%= index %>" value="option1">
            </div>
            <%
                index++;
            %>

            <div class="question">
                <p><%= index + ". What is the full form of JSON?" %></p>
                <div class="form-check">
                    <input type="radio" name="q<%= index %>" value="option1" class="form-check-input" required>
                    <label class="form-check-label">JavaScript Object Notation</label><br>
                    <input type="radio" name="q<%= index %>" value="option2" class="form-check-input">
                    <label class="form-check-label">Java Secure Object Network</label><br>
                    <input type="radio" name="q<%= index %>" value="option3" class="form-check-input">
                    <label class="form-check-label">JavaScript Open Network</label><br>
                    <input type="radio" name="q<%= index %>" value="option4" class="form-check-input">
                    <label class="form-check-label">Java Structured Object Notation</label>
                </div>
                <input type="hidden" name="correct<%= index %>" value="option1">
            </div>
            <%
                index++;
            %>

            <input type="hidden" name="total" value="<%= index - 1 %>">
            <button type="submit" class="btn btn-submit">Submit Quiz</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

