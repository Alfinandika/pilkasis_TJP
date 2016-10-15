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

mysql_select_db($database_koneksi, $koneksi);
$query_rs_calon = "SELECT * FROM calon";
$rs_calon = mysql_query($query_rs_calon, $koneksi) or die(mysql_error());
$row_rs_calon = mysql_fetch_assoc($rs_calon);
$totalRows_rs_calon = mysql_num_rows($rs_calon);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pemiihan Ketua Osis</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

<?php
session_start();

if($_SESSION['MM_Username'] == "" ) {
echo "<script>
window.location = 'login.php';
</script>";
}

?>

</head>

<body>


<p>&nbsp;</p>
<?php do { ?>
  <div class="panel panel-primary" style="width: 30%; margin: 10px; display: inline-table;">
    <div class="panel-heading">
      <div align="center"><?php echo $row_rs_calon['nomor_urut']; ?></div>
    </div>
    <div align="center">
      <table width="100%" height="398" border="0" class="table-striped" style=" margin-top: -10px; font-size: 20px; font-size: 18px;">
        <tr>
          <td height="263"><img src="gambar/<?php echo $row_rs_calon['foto']; ?>" width="100%" height="100%" /></td>
        </tr>
        <tr>
          <td height="40"><div align="center"><span class="panel-body" style="height: 100%; width: 100%"><?php echo $row_rs_calon['nama_ketua']; ?></span></div>            <div align="center"></div></td>
        </tr>
        <tr>
          <td height="35"><div align="center"><span class="panel-body" style="height: 100%; width: 100%"><?php echo $row_rs_calon['nama_wakil']; ?></span></div>            <div align="center"></div></td>
        </tr>
        <tr>
          <td><form id="form1" name="form1" method="post" action="yakin.php?id=<?php echo $row_rs_calon['id']; ?>">
            <div align="center">
              <span class="panel-body" style="width: 100%">
                <input type="submit" name="button" id="pilih" value="PILIH" class="btn-success" style=" border: none; height: 50px; width: 200px;" />
              </span></div>
          </form></td>
        </tr>
      </table>
    </div>
  </div>
  <?php } while ($row_rs_calon = mysql_fetch_assoc($rs_calon)); ?> 
<p>&nbsp;</p>
<div class="container"></div>
</body>
</html>
<?php
mysql_free_result($rs_calon);
?>


