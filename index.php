<?php
$query = [""];
if(isset($_GET["p"]))
	$query = explode("/", $_GET["p"]);

function badResponse() {
	http_response_code(400);
	echo "Lo siento, no se ha encontrado su solicitud";
	exit;
}

if(count($query) < 1)
	badResponse();
if($query[0] === "ingredientes") {
	$conn = new mysqli(null, "***", "***", "ingredientes");
	if($conn) {
		header("Content-type: application/json");
		$result = $conn->query("select * from lista;");
		$res = $result->fetch_all();
		echo json_encode($res);
		$result->close();
		$conn->close();
	}
} else if($query[0] === "imagen" && isset($_GET["n"])) {
	$name = $_GET["n"];
	header("Content-type: image/jpg");
	readfile("./imagenes/$name");
} else 
	badResponse();

