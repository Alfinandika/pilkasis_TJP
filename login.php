<?php require_once('Connections/koneksi.php');


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
?>
<?php
// *** Validate request to login to this site.
if (!isset($_SESSION)) {
  session_start();
}

$loginFormAction = $_SERVER['PHP_SELF'];
if (isset($_GET['accesscheck'])) {
  $_SESSION['PrevUrl'] = $_GET['accesscheck'];
}

if (isset($_POST['textfield'])) {
  $loginUsername=$_POST['textfield'];
  $password= "0";
  $MM_fldUserAuthorization = "";
  $MM_redirectLoginSuccess = "pilih.php";
  $MM_redirectLoginFailed = "login.php?gagal";
  $MM_redirecttoReferrer = false;
  mysql_select_db($database_koneksi, $koneksi);
  
  $LoginRS__query=sprintf("SELECT kode, status FROM username WHERE kode=%s AND status=%s",
    GetSQLValueString($loginUsername, "int"), GetSQLValueString($password, "int")); 
   
  $LoginRS = mysql_query($LoginRS__query, $koneksi) or die(mysql_error());
  $loginFoundUser = mysql_num_rows($LoginRS);
  if ($loginFoundUser) {
     $loginStrGroup = "";
    
	if (PHP_VERSION >= 5.1) {session_regenerate_id(true);} else {session_regenerate_id();}
    //declare two session variables and assign them
    $_SESSION['MM_Username'] = $loginUsername;
    $_SESSION['MM_UserGroup'] = $loginStrGroup;	      

    if (isset($_SESSION['PrevUrl']) && false) {
      $MM_redirectLoginSuccess = $_SESSION['PrevUrl'];	
    }
    header("Location: " . $MM_redirectLoginSuccess );
  }
  else {
    header("Location: ". $MM_redirectLoginFailed );
  }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pemilihan Ketua Osis</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url(bg.jpg);
	background-size: 100%;
	}
</style>
</head>

<body>
<form id="form1" name="form1" method="POST" action="<?php echo $loginFormAction; ?>" class="form">
  <p>
    <label for="textfield"></label>
  </p>
  <div align="center">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
<p>&nbsp;</p>
    <form id="form1" name="form1" method="POST" action="<?php echo $loginFormAction; ?>" class="form">
    <div class="panel panel-primary" style="width: 35%; height: 100%;">
      <div class="panel-heading" style=" font-family: Verdana, Geneva, sans-serif; font-size: 20px;">LOGIN AREA</div>
      <div class="panel-body" style="height: 100%; class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 18px;"">
        <div align="center">
          <p><span >
          <?php
          if(isset($_GET['gagal'])) {
			 echo '<div class="alert alert-danger alert-dismissible" role="alert"> <strong> Maaf Anda Sudah Memilih ! </strong>  </div>';
			  } elseif(isset($_GET['sukses'])) {
			 echo '<div class="alert alert-success alert-dismissible" role="alert"> <strong> Terima Kasih Sudah Memilih </strong>  </div>';
			  }
		  ?>
            <input type="username"  name="textfield" id="textfield2" required="required" placeholder="Masukkan Kode Pin" style="width: 100%; height: 40px; font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: center; margin-top: 15px;" class="form-control" maxlength="5" />
          </span><span class="panel-body" style="height: 100px; font-family: Verdana, Geneva, sans-serif; font-size: 18px;">
          <input type="submit" name="button2" id="button2" value="LOGIN" class="btn-success" style=" width: 100%; border: none; height: 40px;" />
        </div>
      </div>
    </div>
    <p>&nbsp;</p>
  </div>
  <p>&nbsp;</p>
</form>
</body>
</html>