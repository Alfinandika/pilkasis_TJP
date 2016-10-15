<?php require_once('Connections/koneksi.php'); 
session_start();
?>
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

if ((isset($_POST["MM_update"])) && ($_POST["MM_update"] == "form1")) {
  $updateSQL = sprintf("UPDATE calon SET suara=%s WHERE id=%s",
                       GetSQLValueString($_POST['suara'], "int"),
                       GetSQLValueString($_POST['id'], "int"));


  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($updateSQL, $koneksi) or die(mysql_error());

  $updateGoTo = "logout.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
}

if ((isset($_POST["MM_update"])) && ($_POST["MM_update"] == "form1")) {
  $updateSQL = sprintf("UPDATE username SET pilihan=%s, status=%s WHERE kode=%s",
                       GetSQLValueString($_POST['id'], "int"),
					   GetSQLValueString("1", "int"),
                       GetSQLValueString($_SESSION['MM_Username'], "int"));

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($updateSQL, $koneksi) or die(mysql_error());
}

$colname_rs_yakin = "-1";
if (isset($_GET['id'])) {
  $colname_rs_yakin = $_GET['id'];
}
mysql_select_db($database_koneksi, $koneksi);
$query_rs_yakin = sprintf("SELECT * FROM calon WHERE id = %s", GetSQLValueString($colname_rs_yakin, "int"));
$rs_yakin = mysql_query($query_rs_yakin, $koneksi) or die(mysql_error());
$row_rs_yakin = mysql_fetch_assoc($rs_yakin);
$totalRows_rs_yakin = mysql_num_rows($rs_yakin);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pemiihan Ketua Osis</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
<?php
$sesi = $_SESSION['MM_Username'];
?>
    <p>
      <input name="suara" type="text" style="z-index:1; margin-top: -1000px;" id="textfield" value="<?php $iya = $row_rs_yakin['suara']; $iya++; echo $iya; ?>" />
    </p>
    <p>&nbsp; </p>
  <div align="center">

    <table width="40%" height="300" border="0" style="" class="table-bordered table-striped" style="margin: 40px; display: inline-table; font-size: 18px; margin-bottom: 50px;">
      <tr>
        <td height="42" colspan="2"><div align="center">Apakah Anda Yakin?</div></td>
      </tr>
      <tr>
        <td height="300" colspan="2"><img src="gambar/<?php echo $row_rs_yakin['foto']; ?>" height="100%" width="100%"/></td>
      </tr>
      <tr>
        <td width="50%" height="43"><div align="center"><?php echo $row_rs_yakin['nama_ketua']; ?></div></td>
      </tr>
      <tr>
        <td height="36"><div align="center"><?php echo $row_rs_yakin['nama_wakil']; ?></div></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center" style="height: 100%">
                    <input type="hidden" name="MM_update" value="form1" />
    <input type="hidden" name="id" value="<?php echo $row_rs_yakin['id']; ?>" />

          <input type="submit" name="button" id="pilih" value="YAKIN" class=" btn-primary" style=" border: none; height: 50px; width: 200px;" />
        </div></td>
      </tr>
    </table>
    <label for="textfield"></label>

  </div>
</form>
<p>&nbsp;</p>
<form action="<?php echo $editFormAction; ?>" method="post" name="form2" id="form2">
  <input type="hidden" name="MM_update" value="form2" />
  <input type="hidden" name="id" value="<?php echo $row_rs_yakin['id']; ?>" />
</form>
<p>&nbsp;</p>
</body>
</html>
<?php
mysql_free_result($rs_yakin);
?>
