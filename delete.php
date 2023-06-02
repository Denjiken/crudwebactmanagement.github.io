<!DOCTYPE html>
<html>
<head>
    <title>Delete Activity</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #556B2F, #006400);
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: white;
        }

        form {
            background: linear-gradient(to left, #000000, #808080);
            padding: 20px;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="number"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #006400;
        }
    </style>
</head>
<body>
    <?php
    require_once 'db.php';

    // Function to delete an activity
    function deleteActivity($activity_id) {
        global $conn;

        // Delete associated registrations
        $deleteRegistrationsStmt = $conn->prepare("DELETE FROM registrations WHERE activity_id = ?");
        $deleteRegistrationsStmt->bind_param("i", $activity_id);
        $deleteRegistrationsStmt->execute();
        $deleteRegistrationsStmt->close();

        // Delete the activity
        $deleteActivityStmt = $conn->prepare("DELETE FROM activities WHERE category_id = ?");
        $deleteActivityStmt->bind_param("i", $activity_id);

        if ($deleteActivityStmt->execute()) {
            echo "Activity deleted successfully.";
        } else {
            echo "Error deleting activity: " . $deleteActivityStmt->error;
        }

        $deleteActivityStmt->close();
    }

    // Delete Activity form submission handling
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete_activity'])) {
        $activity_id = $_POST['activity_id'];

        deleteActivity($activity_id);
    }
    ?>

    <!-- Delete Activity Form -->
    <h2>Delete Activity</h2>
    <form method="POST" action="">
        <label for="activity_id">Activity ID:</label>
        <input type="number" name="activity_id" required><br><br>

        <input type="submit" name="delete_activity" value="Delete Activity">
    </form><br><br>
    <a href="dash.php"><button>Go to Dashboard Page</button></a>
</body>
</html>
