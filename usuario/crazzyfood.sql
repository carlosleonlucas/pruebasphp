-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2015 a las 06:43:21
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crazzyfood`
--
CREATE DATABASE IF NOT EXISTS `crazzyfood` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `crazzyfood`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda`
--

DROP TABLE IF EXISTS `ayuda`;
CREATE TABLE IF NOT EXISTS `ayuda` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mensaje` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `ayuda`
--

INSERT INTO `ayuda` (`Id`, `Nombre`, `Email`, `Mensaje`) VALUES
(4, 'andres', 'wqeqw@hotmail.com', 'qwewqeqwewqe'),
(5, 'wqewqe', 'wqeqw@hotmail.com', 'asdsadsadsadsadasdwseqwewesdsadasd'),
(6, 'wqewqe', 'wqeqw@hotmail.com', 'asdsadsadsadsadasdwseqwewesdsadasd'),
(7, 'wqewqe', 'wqeqw@hotmail.com', 'xzcsadsadsad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera_orden`
--

DROP TABLE IF EXISTS `cabecera_orden`;
CREATE TABLE IF NOT EXISTS `cabecera_orden` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Direccion_Entrega` varchar(300) NOT NULL,
  `Referencia` varchar(100) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Usuario_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Cabecera_Orden_Usuario1_idx` (`Usuario_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Id`, `Nombre`) VALUES
(1, 'Carnes'),
(2, 'Pizza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Numero_tarjeta` varchar(45) NOT NULL,
  `Tipo_Cliente_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Cliente_Tipo_Cliente_idx` (`Tipo_Cliente_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id`, `Nombre`, `Apellido`, `Email`, `Numero_tarjeta`, `Tipo_Cliente_Id`) VALUES
(2, 'andres', 'moreira', 'mor@hotmail.com', '1236745', 1),
(3, '', '', '', '', 1),
(4, '', '', '', '', 1),
(5, '', '', '', '', 1),
(6, '', '', '', '', 1),
(7, '', '', '', '', 1),
(8, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden`
--

DROP TABLE IF EXISTS `detalle_orden`;
CREATE TABLE IF NOT EXISTS `detalle_orden` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Linea` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `Total` double NOT NULL,
  `Cabecera_Orden_Id` int(11) NOT NULL,
  `Plato_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Detalle_Orden_Cabecera_Orden1_idx` (`Cabecera_Orden_Id`),
  KEY `fk_Detalle_Orden_Plato1_idx` (`Plato_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `secuencia` int(11) NOT NULL,
  `Parroquia` varchar(100) NOT NULL,
  `Calle_principal` varchar(100) NOT NULL,
  `numero_domicilio` varchar(100) NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `Cliente_Id` int(11) NOT NULL,
  `Ciudad_id` int(11) NOT NULL,
  `Sucursal_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`secuencia`),
  KEY `fk_Direccion_Cliente1_idx` (`Cliente_Id`),
  KEY `fk_Direccion_Ciudad1_idx` (`Ciudad_id`),
  KEY `fk_Direccion_Sucursal1_idx` (`Sucursal_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

DROP TABLE IF EXISTS `horario`;
CREATE TABLE IF NOT EXISTS `horario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Hora_Entrada` date NOT NULL,
  `Hora_Cierre` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_sucursal` int(11) NOT NULL,
  `Id_plato` int(11) NOT NULL,
  `Sucursal_Id` int(11) NOT NULL,
  `Plato_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`Id_sucursal`,`Id_plato`),
  KEY `fk_Menu_Sucursal1_idx` (`Sucursal_Id`),
  KEY `fk_Menu_Plato1_idx` (`Plato_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

DROP TABLE IF EXISTS `plato`;
CREATE TABLE IF NOT EXISTS `plato` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Precio` double NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `imagen` blob,
  `Categoria_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Plato_Categoria1_idx` (`Categoria_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`Id`, `Nombre`, `Precio`, `Descripcion`, `imagen`, `Categoria_Id`) VALUES
(1, 'wqewqe', 1, 'qweqwe', 0x777165717765, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ruc` varchar(13) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Horario_ID` int(11) NOT NULL,
  `Marca_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Sucursal_Horario1_idx` (`Horario_ID`),
  KEY `fk_Sucursal_Marca1_idx` (`Marca_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

DROP TABLE IF EXISTS `telefono`;
CREATE TABLE IF NOT EXISTS `telefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Secuencia` int(11) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Cliente_Id` int(11) NOT NULL,
  `Sucursal_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Secuencia`),
  KEY `fk_Telefono_Cliente1_idx` (`Cliente_Id`),
  KEY `fk_Telefono_Sucursal1_idx` (`Sucursal_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

DROP TABLE IF EXISTS `tipo_cliente`;
CREATE TABLE IF NOT EXISTS `tipo_cliente` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`Id`, `Descripcion`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Cliente_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Usuario_Cliente1_idx` (`Cliente_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Usuario`, `Contraseña`, `Cliente_Id`) VALUES
(7, 'qqwewqe', 'wqeqwew', 2),
(8, 'andy', 'morales', 2),
(9, 'roc', 'panda', 2),
(10, 'rew', 'rtrt', 2),
(11, 'qwe', 'qwe', 2),
(12, 'rter', 'wert', 2),
(13, 'weqweqw', 'csd', 2),
(14, 'qqwewqe', 'vdff', 2),
(15, 'admin', 'admin', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cabecera_orden`
--
ALTER TABLE `cabecera_orden`
  ADD CONSTRAINT `fk_Cabecera_Orden_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_Cliente_Tipo_Cliente` FOREIGN KEY (`Tipo_Cliente_Id`) REFERENCES `tipo_cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD CONSTRAINT `fk_Detalle_Orden_Cabecera_Orden1` FOREIGN KEY (`Cabecera_Orden_Id`) REFERENCES `cabecera_orden` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle_Orden_Plato1` FOREIGN KEY (`Plato_Id`) REFERENCES `plato` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `fk_Direccion_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Direccion_Ciudad1` FOREIGN KEY (`Ciudad_id`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Direccion_Sucursal1` FOREIGN KEY (`Sucursal_Id`) REFERENCES `sucursal` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_Menu_Sucursal1` FOREIGN KEY (`Sucursal_Id`) REFERENCES `sucursal` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Menu_Plato1` FOREIGN KEY (`Plato_Id`) REFERENCES `plato` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `fk_Plato_Categoria1` FOREIGN KEY (`Categoria_Id`) REFERENCES `categoria` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `fk_Sucursal_Horario1` FOREIGN KEY (`Horario_ID`) REFERENCES `horario` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sucursal_Marca1` FOREIGN KEY (`Marca_Id`) REFERENCES `marca` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `fk_Telefono_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Telefono_Sucursal1` FOREIGN KEY (`Sucursal_Id`) REFERENCES `sucursal` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
