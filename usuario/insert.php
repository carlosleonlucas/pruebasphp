<html>
<head>
</head>

<body>
<div id="main">
<?php
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];

echo 'Hola ' . htmlspecialchars($nombre) . '!';

include_once("UsuarioCollector.php");

$UsuarioCollectorobj = new UsuarioCollector();
$UsuarioCollectorobj->createUsuario($nombre, $apellido);

echo "valor agregado </br>";
?>
<div><a href="index.php">Volver al Inicio</a></div>
</div>
</body>
</html>
