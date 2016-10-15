<?php require_once('../Connections/koneksi.php'); 
	require_once('class.php');
	?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Pemilihan Ketua Osis</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/highcharts.js"></script>
<script src="../js/exporting.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	var chart1; // globally available
$(document).ready(function() {
      chart1 = new Highcharts.Chart({
         chart: {
            renderTo: 'container',
            type: 'column'
         },   
         title: {
            text: 'Data Perolehan Suara Ketua Osis'
         },
         xAxis: {
            categories: ['Pemilu']
         },
         yAxis: {
            title: {
               text: 'Jumlah Suara'
            }
         },
              series:             
            [
<?php 
mysql_select_db($database_koneksi) or die("Database error");        
$sql   = "SELECT * from calon";
$query = mysql_query( $sql )  or die(mysql_error());         
while($ambil = mysql_fetch_array($query)){
	$id = $ambil['id'];
	$ketua = $ambil['nama_ketua'];
	$wakil = $ambil['nama_wakil'];
	$sql_jumlah   = "SELECT * from calon where id='$id'";        
	$query_jumlah = mysql_query( $sql_jumlah ) or die(mysql_error());
	while( $data = mysql_fetch_array( $query_jumlah ) ){
	   $jumlahx = $data['suara'];                 
	  }             
 
	  ?>
	  {
		  name: '<?php echo "$ketua / $wakil" ; ?>',
		  data: [<?php echo $jumlahx; ?>]
	  },
	  <?php } ?>
]
});
});	
</script>
<?php
session_start();

if($_SESSION['MM_admin'] == "" ) {
		echo "<script>
window.location = 'login.php';
</script>";
}
$suara = new calon;
$persen1 = $suara->nomor_satu();
$persen2 = $suara->nomor_dua();
$persen3 = $suara->nomor_tiga();
$persen4 = $suara->nomor_empat();

?>
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
				<li class="clr1"><a href="index.php">Home</a></li>
				<li class="clr2 active"><a href="startistik.php">Kotak Suara</a></li>
				<li class="clr3"><a href="logout.php">Log Out</a></li>
			</ul>
		</div>
	</div>
</nav>

<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
<div align="center">
  <table width="71%" height="187" border="0">
    <tr>
      <td width="25%"><div class="panel panel-primary" style="width: 100%;">
        <div class="panel-heading" style="font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: center;">1</div>
        <div class="panel-body" style="height: 100%;">
          <div align="center"><span class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 50px;">
          <?php
		  echo number_format("$persen1",2)." %";
		  ?>
    
          </span></div>
        </div>
      </div></td>
      <td width="25%"><div class="panel panel-primary" style="width: 100%;">
        <div class="panel-heading" style="font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: center;"> 2 </div>
        <div class="panel-body" style="height: 100%;">
          <div align="center"><span class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 50px;">
          <?php
		  echo number_format("$persen2",2)." %";
		  ?>


          </span></div>
        </div>
      </div></td>
      <td width="25%"><div class="panel panel-primary" style="width: 100%;">
        <div class="panel-heading" style="font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: center;"> 3</div>
        <div class="panel-body" style="height: 100%;">
          <div align="center"><span class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 50px;">
          <?php
		  echo number_format("$persen3",2)." %";
		  ?>
          
          </span></div>
        </div>
      </div></td>
      <td width="25%"><div class="panel panel-primary" style="width: 100%;">
        <div class="panel-heading" style="font-family: Verdana, Geneva, sans-serif; font-size: 16px; text-align: center;"> 4 </div>
        <div class="panel-body" style="height: 100%;">
          <div align="center"><span class="panel-body" style="height: 100%; font-family: Verdana, Geneva, sans-serif; font-size: 50px;">
          <?php
		  echo number_format("$persen4",2)." %";
		  ?>
          
          </span>
          
          </div>
        </div>
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  
  
</div>
<div class="navbar navbar-default navbar-fixed-bottom footer-bottom">
  <div class="container text-center">
      <p class="text-center">Copyright &copy; 2016, Developed by RPL-TJP</p>
  </div>
</div>
</body>
</html>