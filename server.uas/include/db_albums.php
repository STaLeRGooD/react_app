<?php 
	header('Access-Control-Allow-Origin: *');
	define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASSWORD','root');
	define('DB_NAME','music');
	
	$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
	$conn->set_charset('utf8');
	if ($conn->connect_errno) exit('Ошибка подключения к БД');
	
	$sql = "SELECT * FROM album_list";
	
	if($result = $conn->query($sql)){
		while($row = $result->fetch_array()){  
		$s = $s + 1;
		$albumid = $row["id"];
		$albumtitle = $row["title"];
		$labelid = $row["label_id"];
		$list[0][$s] = $albumid;
		$list[1][$s] = $albumtitle; 
		$list[2][$s] = $labelid;
    }
}
	$json = json_encode($list , JSON_UNESCAPED_UNICODE);
	echo $json;
	$conn->close();
?>