<?php
class db{
	function __construct(){
	}
	public function execute_query($sql_query){
		$mysqli = new mysqli(DBNAME,DBLOGIN,DBPASS,'v_db');
		$result = $mysqli->query($sql_query);
		mysqli_close($mysqli);

		return $result;
	}

}
?>