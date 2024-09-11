<?php
// Include config file
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $departure = $_POST['departure'];
    $destination = $_POST['destination'];
    $travelDate = $_POST['travel-date'];
    $returnDate = $_POST['return-date'];
    $passengers = $_POST['passengers'];

    // Insert data into the database
    $sql = "INSERT INTO flight_inquiries (departure, destination, travel_date, passengers) 
            VALUES ('$departure', '$destination', '$travelDate', '$passengers')";

    if (mysqli_query($conn, $sql)) {
        echo "Inquiry submitted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>
