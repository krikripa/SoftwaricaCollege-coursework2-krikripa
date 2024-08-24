<?php
session_start();

$conn = new mysqli("localhost", "root", "", "photography_studio");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$message = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        if (password_verify($password, $row['password'])) {
            $_SESSION['username'] = $email;
            header("Location: index.php");
            exit;
        } else {
            $message = "Invalid password.";
        }
    } else {
        $message = "No user found with that email.";
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Dream Photography Studio</title>
    <link rel="stylesheet" href="stylelogin.css">
</head>
<body>

<div class="login-container">
    <div class="login-box">
        <h2>Login</h2>
        <?php if ($message): ?>
            <div class="message"><?php echo $message; ?></div>
        <?php endif; ?>
        <form action="login.php" method="post">
            <div class="input-group">
                <input type="text" name="username" placeholder="Email ID" required>
            </div>
            <div class="input-group">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
        </form>
        <p>Don't have an account? <a href="register.html">Register here</a></p>
    </div>
</div>

</body>
</html>
