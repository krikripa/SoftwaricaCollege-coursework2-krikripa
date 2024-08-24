<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "photography_studio";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $session_type = $_POST['session-type'];
    $session_date = $_POST['date'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $contact_number = $_POST['contact'];
    $additional_message = $_POST['message'];

    $sql = "INSERT INTO bookings (session_type, session_date, name, email, contact_number, additional_message)
            VALUES ('$session_type', '$session_date', '$name', '$email', '$contact_number', '$additional_message')";

    if ($conn->query($sql) === TRUE) {
        echo "<html>
                <head>
                    <link rel='stylesheet' href='styleform.css'>
                </head>
                <body>
                    <div id='successModal' class='modal'>
                        <div class='modal-content'>
                            <h2>Form Successfully Submitted</h2>
                            <p>Your booking has been recorded.</p>
                            <a href='booking.html' class='modal-button'>Go Back to Booking Page</a>
                        </div>
                    </div>
                </body>
                <script>
                    var modal = document.getElementById('successModal');
                    window.onload = function() {
                        modal.style.display = 'block';
                    }
                </script>
              </html>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
