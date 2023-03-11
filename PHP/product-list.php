<?php
    include 'config.php';
    include 'db.php';
    $dbc = new DB($dbHost, $dbUser, $dbPassword, $dbName);
    $sql = "SELECT * FROM products;";
    $result = $dbc -> query( $sql );
    $data = $dbc -> fetchAll();
    $dbc -> close();
    foreach ($data as $key => $value) {
        foreach ($value as $k => $v) {
            echo $k.": ".$v."<br>";
        }
        echo "<br>";
    }
?>