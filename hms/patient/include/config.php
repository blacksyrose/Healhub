<?php
define('DB_SERVER','localhost');
define('DB_USER','id21544810_healhub');
define('DB_PASS' ,'!Moonstar04');
define('DB_NAME', 'id21544810_hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>