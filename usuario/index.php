<html>
<head>
</head>
<?php
include_once("UsuarioCollector.php");
$UsuarioCollectorObj = new UsuarioCollector();
?>
<body>
<div id="main">
<table>
<tr><td><a href="formularioUsuarioInsert.php">Nuevo</a></td></tr>
<?php
foreach ($UsuarioCollectorObj->readUsuarios() as $objetoaux){
  echo "<tr>";
  echo "<td>".$objetoaux->getIdUsuario() ."</td>";
  echo "<td>".$objetoaux->getNombre()."</td>";
  echo "<td>".$objetoaux->getApellido()."</td>";
  echo "<td><a href='formularioUsuarioEditar.php?id=".$objetoaux->getIdUsuario()."'>editar</a></td>";
  echo "<td><a href='eliminar.php?id=".$objetoaux->getIdUsuario()."'>eliminar</a></td>"; 
  echo "<td><a href='pages/restaurante.php?titulo="."holaaa"."'>Nueva con titulo</a></td>"; 
  echo "</tr>"; 
}
?>
</table>
</div>
</body>
</html>
