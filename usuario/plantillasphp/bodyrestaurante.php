
<?php
//obtener el valor de ID que viene del metodo GET a traves de HTTP
$id=$_GET["titulo"];

?>
<body id="page1">
<div class="body6">
	<div class="body1">
		<div class="body5">
			<div class="main zerogrid">
			
			<?php include '../plantillasphp/headerRCC.php' ; ?>

				<h2 id="titulopag"> <?php echo $id; ?> </h2> <input  href="#" class="button1" id="seccionbuscar" type="submit" value="Buscar">
				<br><br> <input  id="seccionbuscar" type="search" name="buscar"><br>
				
				<div id="contenido">
				
									<div id="banner_left">
										<ul id="menu_categorias">
											<li id="cate">Categor&iacuteas</li>
											<li>Caf&eacute</li>
											<li>Pizza</li>
											<li>Mariscos</li>
											<li>Carnes</li>
											
										</ul>

									</div>
									
									<div id="banner_right">
										<img src="../images/Tomate.png" class="imares"  alt="res1">
										<img src="../images/mcdonalds.png" class="imares"  alt="res1" >
										<img src="../images/Menestras_Del_Negro_Logo.jpg" class="imares"  alt="res1" >
												
										
									</div>
								  <br/> 
				</div>
	
				
<!-- / header -->
<!-- content -->
				<article id="content">							
				</article>

			</div>
		</div>
				</div>
</div>

<?php include '../plantillasphp/footRCC.php' ; ?>
<script type="text/javascript"> Cufon.now(); </script>
</body>
