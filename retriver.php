<?php
$conn = new mysqli(null, "", "", "ingredientes");
$CSE = "";
$API_KEY = "";
$CURL_URL = "https://customsearch.googleapis.com/customsearch/v1?";
$CURL_URL .= "num=1&";
$CURL_URL .= "cx=$CSE&";
$CURL_URL .= "key=$API_KEY&";
$CURL_URL .= "searchType=image";

# Primero conseguimos los ingredientes
function get_ingredients() {
	global $conn;
	$res = $conn->query("select * from lista;");
	if($res) {
		$ret = $res->fetch_all();
		$res->close();
		return $ret;
	} else 
		print_r($conn->error);
}

function get_image($url) {
	$file = fopen("./images/" . time() . ".png", "w");
	$ch = curl_init(urlencode($url));
	curl_setopt($ch, CURLOPT_FILE, $file);
	curl_exec($ch);
	curl_close($ch);
}

function search_images($image) {
	global $CURL_URL;
	$image = urlencode($image);
	$url = $CURL_URL . "&q=$image";
	$curl = curl_init($url);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	$res = curl_exec($curl);
	if(!$res) {
		echo curl_error($curl);
	}
	curl_close($curl);
	return json_decode($res);
}


$ingredientes = get_ingredients();
# $imagenes = search_images("hola");
# get_image($imagenes->items[0]->link);
for($i = 0; $i < count($ingredientes); $i++) {
	$id = $ingredientes[$i][0];
	$ingrediente = $ingredientes[$i][1];
	$res = search_images($ingrediente);
	if(isset($res->items[0]))
		get_image($res->items[0]->link);
	else 
		print_r($res);
}
$conn->close();
