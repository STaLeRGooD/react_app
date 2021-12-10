<?php 
	header('Access-Control-Allow-Origin: *');
	define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASSWORD','root');
	define('DB_NAME','music');
	
	$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
	$conn->set_charset('utf8');
	if ($conn->connect_errno) exit('Ошибка подключения к БД');
	
	$sql = "SELECT * FROM music_list";
	
	if($result = $conn->query($sql)){
		while($row = $result->fetch_array()){  
		$s = $s + 1;
		
		$musicid = $row["id"];
		$idartist = $row["id_artist"];
		$musictitle = $row["title"];
		$labelid = $row["label_id"];
		$musiclink = $row["link"];
		$albumid = $row["id_album"];
		$musicnumberalbum = $row["number_in_album"];
		
		$list[0][$s] = $musicid;
		$list[1][$s] = $idartist; 
		$list[2][$s] = $musictitle;
		$list[3][$s] = $labelid;
		$list[4][$s] = $musiclink; 
		$list[5][$s] = $albumid;
		$list[6][$s] = $musicnumberalbum;
		
    }
}
	$json = json_encode($list , JSON_UNESCAPED_UNICODE);
	echo $json;
	$conn->close();
?>