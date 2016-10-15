<?php require_once('../Connections/koneksi.php');

$page = $_SERVER['PHP_SELF'];
 $sec = "60";
 header("Refresh: $sec; url=$page");

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pemiihan Ketua Osis</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<?php
session_start();

if($_SESSION['MM_admin'] == "" ) {
		echo "<script>
window.location = 'login.php';
</script>";
}

?>
<style type="text/css">

</style>

</head>
<body>

<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php">
			Pemilihan Ketua Osis</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="clr1 active"><a href="index.php">Home</a></li>
				<li class="clr2"><a href="startistik.php">Kotak Suara</a></li>
				<li class="clr3"><a href="logout.php">Log Out</a></li>
			</ul>
		</div>
	</div>
</nav>

<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto">
	
    <p>
      <?php
	require_once('class.php');
	
	$db = new suara;
	$suaramasuk = $db->suaramasuk();
	$totalsuara = $db->totalsuara();
	$persensuaramasuk = ($suaramasuk/$totalsuara*100);

	?>
    </p>
    <p>&nbsp;</p>
  <p>&nbsp;</p>
    <div align="center">
      <table width="400px" height="200" border="0">
        <tr>
          <td>
            <div class="container">
              <div class="panel panel-primary" style="width: 100%;">
                <div class="panel-heading" style="font-family: Verdana, Geneva, sans-serif; font-size: 30px; text-align: center;">
                  <div align="center">Suara Masuk </div>
                </div>
                <div class="panel-body" style="height: 100%;">
                  <div align="center"><span class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 80px;">
                  <?php
         echo number_format("$persensuaramasuk",2)." %";
		 ?>
                  </span>                  </div>
                </div>
              </div>
              <div align="center"></div>
            </div>
            
          </td>
        </tr>
        </table>
    </div>
    <p>&nbsp;</p>
</div>
 
 
 <div class="navbar navbar-default navbar-fixed-bottom footer-bottom">
   <div class="container text-center">
      <p class="text-center">Copyright &copy; 2016, Developed by RPL-TJP</p>
   </div>
</div>
</body>
</html>