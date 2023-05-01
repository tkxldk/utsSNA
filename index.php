<?php
    $host = '172.18.0.2';
    $username = 'root';
    $password = 'root';
    $database = 'Redlock';

    $conn = mysqli_connect($host, $username, $password, $database);

    if (!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM users";

    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0){
        echo "<table>";
        echo "<tr><th>ID</th><th>Nama</th><th>Alamat</th><th>Jabatan</th></tr>";
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row['ID'] . "</td>";
            echo "<td>" . $row['Nama'] . "</td>";
            echo "<td>" . $row['Alamat'] . "</td>";
            echo "<td>" . $row['Jabatan'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else echo "No results found";

    mysqli_close($conn);
?> 