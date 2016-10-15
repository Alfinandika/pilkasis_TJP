<?php

class suara{
	  private $hostname = "localhost";
      private $database = "osis";
      private $username = "root";
      private $password = "";
	function __construct(){
		mysql_connect($this->hostname, $this->username, $this->password);
		mysql_select_db($this->database) or die("Database tidak terkoneksi");
		}
		
	function suaramasuk(){
		$sql   = "SELECT * FROM username WHERE status='1'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
        return $result;
		}
	function belumpilih(){
		$sql   = "SELECT * FROM username WHERE status='0'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
        return $result;
		}
	function totalsuara(){
		$sql   = "SELECT * FROM username";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
        return $result;
		
		}
	
	
	
	
}
class calon extends suara {

	

	function nomor_satu(){
		$sql   = "SELECT * FROM username WHERE pilihan='1'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
		$persen = ($result/$this->totalsuara()*100);
        return $persen;
		}
		
	function nomor_dua(){
		$sql   = "SELECT * FROM username WHERE pilihan='2'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
		$persen = ($result/$this->totalsuara()*100);
        return $persen;
		}
		
	function nomor_tiga(){
		$sql   = "SELECT * FROM username WHERE pilihan='3'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
		$persen = ($result/$this->totalsuara()*100);
        return $persen;
		}
		
	function nomor_empat(){
		$sql   = "SELECT * FROM username WHERE pilihan='4'";
        $query = mysql_query($sql);
        $result = mysql_num_rows($query);
		$persen = ($result/$this->totalsuara()*100);
        return $persen;
		}
		
	
	}
	
	

?>