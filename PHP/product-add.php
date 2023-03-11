<?php
    if (!isset($_GET['Name']) || !isset($_GET['Price']) ) {
        echo "Bad Input | Name =? , Price =?";
    } 
    else
    {
        $pName = $_GET['Name'];
        $pPrice = $_GET['Price'];
        include 'config.php';
        include 'db.php';
        $dbc = new DB($dbHost, $dbUser, $dbPassword, $dbName);
        $sql = "INSERT INTO `products` (`id`, `name`, `price`) VALUES (NULL, ?, ?);";
        $result = $dbc -> query( $sql, $pName,$pPrice );
        if ($result) {
            echo "Product Added";
        } 
    }
?>