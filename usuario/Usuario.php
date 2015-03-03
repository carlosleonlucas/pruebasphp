<?php

class Usuario
{
    private $idUsuario;
    private $nombre;
    
     function __construct($idUsuario, $nombre, $apellido) {
       $this->idUsuario = $idUsuario;
       $this->nombre = $nombre;
	   $this->apellido = $apellido;
     }
    
     function setIdUsuario($idUsuario){
       $this->idUsuario = $idUsuario;
     } 
     function getIdUsuario(){
       return $this->idUsuario;
     } 
     function setNombre($nombre){
       $this->nombre = $nombre;
     } 
     function getNombre(){
       return $this->nombre;
     } 
	 function setApellido($apellido){
       $this->apellido = $apellido;
     } 
     function getApellido(){
       return $this->apellido;
     } 
}

?> 
