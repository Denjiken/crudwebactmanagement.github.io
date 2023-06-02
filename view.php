<?php
require_once 'db.php';

// Function to view activities
function viewActivities() {
    global $conn;

    $sql = "SELECT activities.activity_id AS 'Activity No.',
            activities.activity_name AS 'Activity',
            activities.activity_date AS 'Date',
            activities.activity_description AS 'Description',
            instructors.instructor_name AS 'Instructor',
            activity_categories.study_area AS 'Category'
            FROM activities
            INNER JOIN instructors ON activities.instructor_id = instructors.instructor_id
            INNER JOIN activity_categories ON activities.category_id = activity_categories.category_id";

    $result = $conn->query($sql);

    echo "<table class='activity-table'>";
    echo "<tr><th>Activity No.</th><th>Activity</th><th>Date</th><th>Description</th><th>Instructor</th><th>Category</th></tr>";

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['Activity No.'] . "</td>";
            echo "<td>" . $row['Activity'] . "</td>";
            echo "<td>" . $row['Date'] . "</td>";
            echo "<td>" . $row['Description'] . "</td>";
            echo "<td>" . $row['Instructor'] . "</td>";
            echo "<td>" . $row['Category'] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='6'>No activities found.</td></tr>";
    }

    echo "</table>";
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>View Activities</title>
</head>
<body>
    <div class="view-activities-container">
        <h1>View Activities</h1>
        <div style="text-align: right;">
            <form action="index.php" method="POST">
                <button type="submit" style="background-color: red; color: white; border: none; padding: 10px; cursor: pointer;">Logout</button>
            </form>
        </div>
    </div>
    <style>
        body {
            background: linear-gradient(to right, #1B4E2B, #063321);
            margin: 10px;
            padding: 10px;
            font-family: Arial, sans-serif;
            color: white;
        }

        .view-activities-container {
            background: linear-gradient(to bottom right, #355E3B, #222222);
            padding: 10px;
            border-radius: 10px;
        }

        h1 {
            background: linear-gradient(to right, #666666, #333333);
            padding: 10px;
            margin-left: -10px;
            margin-right: -10px;
            text-align: center;
            color: white;
        }

        .activity-table {
            background: linear-gradient(to bottom right, #666666, #333333);
            border-radius: 10px;
            width: 100%;
        }

        .activity-table th,
        .activity-table td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
            color: white;
        }
    </style>

    <?php
    viewActivities();
    ?>
</body>
</html>
