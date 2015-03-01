<?php

class Usuario
{
    private $idUsuario;
    private $nombre;
    
     function __construct($idUsuario, $nombre) {
       $this->idUsuario = $idUsuario;
       $this->nombre = $nombre;
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
}

?> 
