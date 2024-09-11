<?php
// Include config file for database connection
include 'config.php';

// Fetch departure and destination locations from the database
$query = "SELECT * FROM locations";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Inquiry Form </title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h1>Submit Your Flight Inquiry</h1>
    <form action="submit-inquiry.php" method="POST">
    <label for="departure">Departure:</label>
        <select id="departure" name="departure" required>
            <option value="">Select Departure</option>
            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <option value="<?php echo $row['location_name']; ?>">
                    <?php echo $row['location_name']; ?>
                </option>
            <?php } ?>
        </select>

        <!-- Re-query the locations for the destination -->
        <?php 
        mysqli_data_seek($result, 0); // Reset the result pointer to fetch locations again
        ?>

        <label for="destination">Destination:</label>
        <select id="destination" name="destination" required>
            <option value="">Select Destination</option>
            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <option value="<?php echo $row['location_name']; ?>">
                    <?php echo $row['location_name']; ?>
                </option>
            <?php } ?>
        </select>

        <label for="travel-date">Travel Date:</label>
        <input type="date" id="travel-date" name="travel-date" required>
        
        <label for="return-date">Return Date:</label>
        <input type="date" id="return-date" name="return-date" required>
        
        <label for="passengers">Number of Passengers:</label>
        <input type="number" id="passengers" name="passengers" required>

        <input type="submit" value="Submit Inquiry">
    </form>
</div>

<script src="js/script.js"></script>
</body>
</html>
