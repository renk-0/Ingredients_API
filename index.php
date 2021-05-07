<?php
$query = [""];
if(isset($_GET["p"]))
	$query = explode("/", $_GET["p"]);

print_r($query);
