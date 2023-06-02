<?php
session_start();
include("db.php");

function redirect($url) {
    echo "<script>document.location='{$url}';</script>";
    die;
}

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    if (isset($_POST['username']) && isset($_POST['password'])) {
        $inputUsername = $_POST['username'];
        $inputPassword = $_POST['password'];

        if (!empty($inputUsername) && !empty($inputPassword)) {
            $query = "SELECT * FROM user WHERE username = ? LIMIT 1";
            $loginStmt = $conn->prepare($query);
            $loginStmt->bind_param("s", $inputUsername);
            $loginStmt->execute();
            $result = $loginStmt->get_result();

            if ($result && $result->num_rows === 1) {
                $user = $result->fetch_assoc();
                $hashedPassword = $user['user_password'];

                if (password_verify($inputPassword, $hashedPassword)) {
                    $_SESSION['user_id'] = $user['id'];
                    if ($user['user_type'] === 'student') {
                        redirect('view.php');
                    } elseif ($user['user_type'] === 'instructor') {
                        redirect('dash.php');
                    }
                }
            }
            echo "<script>alert('Invalid username or password.');</script>";
        } else {
            echo "<script>alert('Please provide both username and password.');</script>";
        }
        $loginStmt->close();
    } else {
        echo "<script>alert('Please provide both username and password.');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/login.css">
    <style>
        body {
            background: linear-gradient(to bottom right, #355E3B, #222222);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            color: #FFFFFF;
        }
        
        .login-container {
            background: linear-gradient(to bottom right, #666666, #222222);
            border-radius: 20px;
            padding: 20px;
            width: 300px;
        }

        h1, p, label {
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        form {
            margin-top: 10px;
        }

        input[type="text"], input[type="password"] {
            display: block;
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #CCCCCC;
        }

        button[type="submit"] {
            background-color: #355E3B;
            color: #FFFFFF;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            cursor: pointer;
        }

        a {
            color: #FFFFFF;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <p>Please enter your login credentials.</p>
        <form action="index.php" method="POST">
            <input type="text" placeholder="Username" id="username" name="username" required>
            <input type="password" placeholder="Password" id="password" name="password" required>
            <button type="submit">Login</button><br>
            <label>Don't have an account yet?</label>
            <a href="index.php" style="color: #007BFF;">Sign Up</a>
        </form>
    </div>
</body>
</html>


