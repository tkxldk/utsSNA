<?php
    $host = '172.18.0.2';
    $username = 'root';
    $password = 'root';
    $database = 'Redlock';

    $conn = mysqli_connect($host, $username, $password, $database);

    if (!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT COUNT(*) as total FROM users";

    $result = mysqli_query($conn, $sql);

    $row = mysqli_fetch_assoc($result);
    $total = $row['total'];

    echo "Total users: " . $total;

    mysqli_close($conn);
?>
