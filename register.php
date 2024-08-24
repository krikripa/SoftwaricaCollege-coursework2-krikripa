<?php
$conn = new mysqli("localhost", "root", "", "photography_studio");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$message = "";
$success = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Check if the user already exists
    $sql = "SELECT * FROM users WHERE username='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $message = "An account with this email already exists. <a href='login.html'>Login here</a>";
    } else {
        // Insert the new user into the users table
        $sql = "INSERT INTO users (username, password) VALUES ('$email', '$password')";

        if ($conn->query($sql) === TRUE) {
            $message = "Registration successful! You can now <a href='login.html'>login</a>.";
            $success = true;
        } else {
            $message = "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }

        .message-container {
            background: white;
            color: #333;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            text-align: center;
        }

        .message-container h2 {
            margin-top: 0;
            font-size: 24px;
        }

        .message-container p {
            margin: 15px 0;
        }

        .message-container a {
            color: #667eea;
            text-decoration: none;
        }

        .message-container a:hover {
            text-decoration: underline;
        }

        .success {
            color: #28a745;
        }

        .error {
            color: #dc3545;
        }
    </style>
</head>
<body>

<div class="message-container">
    <h2><?php echo $success ? "Success!" : "Registration Error"; ?></h2>
    <p class="<?php echo $success ? 'success' : 'error'; ?>">
        <?php echo $message; ?>
    </p>
</div>

</body>
</html>
