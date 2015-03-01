<?php

include_once('Usuario.php');
include_once('Collector.php');

class UsuarioCollector extends Collector
{
  
  function showUsuario($id) {
    $row = self::$db->getRows("SELECT * FROM usuario where idusuario= ? ", array("{$id}")); 
    $ObjUsuario = new Usuario($row[0]{'idusuario'},$row[0]{'nombre'});
    return $ObjUsuario;
  }

  function createUsuario($nombre) {    
    $insertrow = self::$db->insertRow("INSERT INTO clase.usuario (idusuario, nombre) VALUES (?, ?)", array(null, "{$nombre}"));
  }  

  function readUsuarios() {
   
    $rows = self::$db->getRows("SELECT * FROM usuario ");        
    $arrayUsuario= array();        
   
    foreach ($rows as $c){
      $aux = new Usuario($c{'idusuario'},$c{'nombre'});
      array_push($arrayUsuario, $aux);
    }
    return $arrayUsuario;        
  }
  
  function updateUsuario($id,$nombre) {    
    $insertrow = self::$db->updateRow("UPDATE clase.usuario SET usuario.nombre = ?  WHERE usuario.idusuario = ? ", array( "{$nombre}",$id));
  }  

  function deleteUsuario($id) {    
    $deleterow = self::$db->deleteRow("DELETE FROM clase.usuario WHERE idusuario= ?", array("{$id}"));
  }  
}
?>

