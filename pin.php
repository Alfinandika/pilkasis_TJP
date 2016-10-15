<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

$alphabet = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
$pincode = rand(0,9).rand(0,9).$alphabet[rand(0,25)].$alphabet[rand(0,25)].$alphabet[rand(0,25)];



if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO pin (kodepin, status) VALUES (%s, %s)",
                       GetSQLValueString($pincode, "text"),
                       GetSQLValueString(belum, "text"));

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

  $insertGoTo = "pin.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}

mysql_select_db($database_koneksi, $koneksi);
$query_kodepin = "SELECT kodepin FROM pin ORDER BY id DESC LIMIT 1";
$kodepin = mysql_query($query_kodepin, $koneksi) or die(mysql_error());
$row_kodepin = mysql_fetch_assoc($kodepin);
$totalRows_kodepin = mysql_num_rows($kodepin);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pemilihan Osis</title>
<style type="text/css">
#tabel {
	font-family: Verdana, Geneva, sans-serif;
	background-color: #CCC;
	border: 5px solid #CCC;
	border-radius: 5px;
	font-size: 70px;
	}
.tombol {
	font-family: Verdana, Geneva, sans-serif;
	background-color: #339966;
	color: #FFF;
	width: 500px;
	font-size: 24px;
	border: solid 5px #339966;
	border-radius: 5px;
		}
.tombol:hover {
	font-family: Verdana, Geneva, sans-serif;
	background-color: #FFF;
	color: #339966;
	width: 500px;
	font-size: 24px;
	border: solid 5px #FFF;
	border-radius: 5px;
		}
.label {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 24px;
	width: 500px;
	height: 100px;
	border: solid 5px #FFF;
	border-radius: 5px;
	}
</style></head>

<body bgcolor="#339966">
<p>
 
</p>
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="46%" height="355" border="0" id="tabel">
    <tr>
      <td><form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
            <div align="center">
              <p><?= $row_kodepin['kodepin']; ?></p>
              <p>
                <label for="label"></label>
              </p>
              <p class="tombol">
                <input type="submit" value="GENERATE PIN" class="tombol" />
                <input type="hidden" name="MM_insert" value="form1" />
              </p>
          </div>
          </form></td>
    </tr>
  </table>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
<?php
mysql_free_result($kodepin);
?>
