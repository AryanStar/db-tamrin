<?php
    if (!isset($_GET['id']) ) {
        echo "Bad Input | id =?";
    } 
    else
    {
        $id = $_GET['id'];
        include 'config.php';
        include 'db.php';
        $dbc = new DB($dbHost, $dbUser, $dbPassword, $dbName);
        $sql = "UPDATE products SET state = 'Deleted' WHERE id = ?";
        $result = $dbc -> query( $sql, $id );
        if ($result) {
            echo "Product Deleted";
        } else {
            echo "Error";
        }
    }
?>