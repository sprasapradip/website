<?php
// Include config file
include '../config.php';

// Retrieve all inquiries from the database
$sql = "SELECT * FROM flight_inquiries";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Flight Inquiries</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<h1>Admin Panel - View Flight Inquiries</h1>
<table>
    <tr>
        <th>Departure</th>
        <th>Destination</th>
        <th>Travel Date</th>
        <th>Return Date</th>
        <th>Passengers</th>
    </tr>
   
    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
    <tr>
        <td><?php echo $row['departure']; ?></td>
        <td><?php echo $row['destination']; ?></td>
        <td><?php echo $row['travel_date']; ?></td>
        <td><?php echo $row['return_date']; ?></td>
        <td><?php echo $row['passengers']; ?></td>
    </tr>
    <?php } ?>
</table>

</body>
</html>
