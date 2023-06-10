<?php
    $host = "localhost:3306";
    $user = "root";                     
    $pass = "";                                  
    $db = "movietheatredb";
    $port = 3306;
     $con = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());
?>