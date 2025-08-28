<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Results</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 800px;
            padding: 40px;
            margin: 20px;
        }
        
        .logo-container {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .logo {
            max-width: 200px;
            height: auto;
        }
        
        h1 {
            color: #2c3e50;
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
        }
        
        .thankyou-text {
            text-align: center;
            color: #7f8c8d;
            font-size: 20px;
            margin-bottom: 40px;
            line-height: 1.5;
        }
        
        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin: 30px 0;
            font-size: 18px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        
        .info-table th {
            background-color: #3498db;
            color: white;
            text-align: left;
            padding: 18px;
            font-size: 20px;
            width: 30%;
        }
        
        .info-table td {
            padding: 18px;
            border-bottom: 1px solid #e0e0e0;
            color: #2c3e50;
            font-weight: 500;
        }
        
        .info-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        .info-table tr:last-child td {
            border-bottom: none;
        }
        
        .back-link {
            display: block;
            text-align: center;
            margin-top: 40px;
        }
        
        .back-button {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
            text-decoration: none;
            padding: 15px 35px;
            font-size: 18px;
            font-weight: 600;
            border-radius: 8px;
            transition: transform 0.3s, box-shadow 0.3s;
            display: inline-block;
        }
        
        .back-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 15px rgba(37, 117, 252, 0.4);
        }
        
        @media (max-width: 768px) {
            .container {
                padding: 25px;
            }
            
            h1 {
                font-size: 30px;
            }
            
            .info-table {
                font-size: 16px;
            }
            
            .info-table th, .info-table td {
                padding: 14px;
            }
            
            .info-table th {
                font-size: 18px;
            }
        }
        
        @media (max-width: 480px) {
            .info-table {
                display: block;
                overflow-x: auto;
            }
            
            .info-table th, .info-table td {
                display: block;
                width: 100%;
                text-align: center;
            }
            
            .info-table th {
                background-color: #2980b9;
                margin-top: 5px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo-container">
            <img src="images/murachlogo.jpg" alt="Murach Logo" class="logo">
        </div>
        
        <h1>Thank You for Taking Our Survey!</h1>
        <p class="thankyou-text">Here is the information you entered:</p>
        
        <table class="info-table">
            <tr>
                <th>Full Name</th>
                <td>${fullName}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${email}</td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td>${dob}</td>
            </tr>
            <tr>
                <th>Heard From</th>
                <td>${heardFrom}</td>
            </tr>
            <tr>
                <th>Wants Updates</th>
                <td>${wantsUpdates}</td>
            </tr>
            <tr>
                <th>Email OK</th>
                <td>${emailOK}</td>
            </tr>
            <tr>
                <th>Preferred Contact</th>
                <td>${contactVia}</td>
            </tr>
        </table>
        
        <div class="back-link">
            <a href="index.html" class="back-button">Back to Survey</a>
        </div>
    </div>
</body>
</html>