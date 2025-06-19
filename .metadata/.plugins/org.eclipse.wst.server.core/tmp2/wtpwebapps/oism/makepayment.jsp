<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online School Payment</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #337ab7;
            color: #fff;
            padding: 20px;
        }

        form {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #337ab7;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #235a96;
        }
    </style>
</head>
<body>
<h1>Online School Payment</h1>

    <form action="payment.jsp" method="POST">
        <label for="student_name">Student Name:</label>
        <input type="text" name="student_name" required><br><br>

        <label for="student_id">Student ID:</label>
        <input type="text" name="student_id" required><br><br>

        <label for="amount">Payment Amount:</label>
        <input type="text" name="amount" required><br><br>

        <label for="payment_method">Payment Method:</label>
        <select name="payment_method">
            <option value="credit_card">Credit Card</option>
            <option value="debit_card">Debit Card</option>
            <option value="paypal">PayPal</option>
        </select><br><br>
        <button href="payment.jsp" >Payment</button>
        </form>
</body>
</html>