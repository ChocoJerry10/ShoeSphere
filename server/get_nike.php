<?php

include('connection.php');

$stmt = $conn -> prepare("SELECT * FROM products where product_category='nike' LIMIT 4" );

$stmt -> execute();

$nike = $stmt->get_result();

?>