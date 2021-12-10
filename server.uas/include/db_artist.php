<?php 
	header('Access-Control-Allow-Origin: *');
	define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASSWORD','root');
	define('DB_NAME','music');
	
	$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
	$conn->set_charset('utf8');
	if ($conn->connect_errno) exit('Ошибка подключения к БД');
	
	$sql = "SELECT * FROM artist_list";
	
	if($result = $conn->query($sql)){
		while($row = $result->fetch_array()){  
		$s = $s + 1;
		$artistid = $row["id"];
		$artistname = $row["name"];
		$list[0][$s] = $artistid;
		$list[1][$s] = $artistname; 
    }
}
	$json = json_encode($list , JSON_UNESCAPED_UNICODE);
	echo $json;
	$conn->close();
?>