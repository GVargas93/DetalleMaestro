-- =================================================
-- Autor:			Gerimar, Gerardo, Diego
-- Fecha:			31/03/2016
-- Descripción:		Maestro-Detalle-Software
-- Versión:			1.0.0
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

PRINT 'INICIANDO CREACION DE LA BASE DE DATOS'

USE master;
GO

IF EXISTS(SELECT name FROM sys.databases WHERE name = 'MaestroDetalleSoftware')
	DROP DATABASE MaestroDetalleSoftware
GO

IF NOT EXISTS(SELECT name FROM sys.databases WHERE name = 'MaestroDetalleSoftware')
	CREATE DATABASE MaestroDetalleSoftware;
GO

USE MaestroDetalleSoftware
GO

PRINT 'FIN CREACION BASE DE DATOS'
GO


PRINT 'INICIANDO CREACION DE ESQUEMAS'

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'DML')
	Exec('CREATE SCHEMA DML')
GO

PRINT 'FIN CREACION DE ESQUEMAS'
GO
------------------------------------- Soy Una Barra Separadora :) ----------------------------------------

PRINT 'INICIANDO CREACION DE TABLAS'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
Print 'Iniciando 1 Tabla-Tbl_Cliente'

IF EXISTS(SELECT name FROM MaestroDetalleSoftware..sysobjects WHERE name = N'Tbl_Cliente' AND xtype='U')
	DROP TABLE [DML].[Tbl_Cliente]
	GO

CREATE TABLE [DML].[Tbl_Cliente]
(
cliente_id			int identity(1,1) not null,
nombre				varchar(50) not null,
nit					int not null,

Constraint	Pk_tbl_Cliente primary key (cliente_id)
)
Go
Print 'Finalizando 1 Tabla-Tbl_Cliente'

------------------------------------- Soy Una Barra Separadora :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 2 Tabla-Tbl_Producto'

IF EXISTS(SELECT name FROM MaestroDetalleSoftware..sysobjects WHERE name = N'Tbl_Producto' AND xtype='U')
	DROP TABLE [DML].[Tbl_Producto]
	GO

CREATE TABLE [DML].[Tbl_Producto]
(
producto_id		int identity(1,1) not null,
nombre			varchar(50) not null,
precio			int not null,
CONSTRAINT PK_Tbl_Producto primary key(producto_id)
)
Go
Print 'Finalizando 2 Tabla-Tbl_Producto'
------------------------------------- Soy Una Barra Separadora  :) --------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 3 Tabla-Tbl_Venta'

IF EXISTS(SELECT name FROM MaestroDetalleSoftware..sysobjects WHERE name = N'Tbl_Venta' AND xtype='U')
	DROP TABLE [DML].[Tbl_Venta]
	GO

CREATE TABLE [DML].[Tbl_Venta]
(
venta_id			int identity(1,1) not null,
fecha				varchar(50) not null,
Fk_cliente_id		int not null,
total 				int not null,
CONSTRAINT PK_Tbl_Venta primary key(venta_id),
constraint FK_Tbl_Cliente foreign key(Fk_cliente_id) references [DML].[Tbl_Cliente](cliente_id)			
)
Go
Print 'Finalizando 3 Tabla-Tbl_Venta'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 6 Tabla-Tbl_Detalle_Venta'

IF EXISTS(SELECT name FROM MaestroDetalleSoftware..sysobjects WHERE name = N'Tbl_Detalle_Venta' AND xtype='U')
	DROP TABLE [DML].[Tbl_Detalle_Venta]
	GO

CREATE TABLE [DML].[Tbl_Detalle_Venta]
(
detalle_id			int identity(1,1) not null,
Fk_venta_id	 		int not null,
Fk_producto_id 		int not null,
precio				int not null,
cantidad 			int not null,
subTotal 			int not null,
CONSTRAINT PK_Tbl_Detalle_Venta primary key(detalle_id),
constraint FK_Tbl_Venta foreign key(Fk_venta_id) references [DML].[Tbl_Venta](venta_id),	
constraint FK_Tbl_Producto foreign key(Fk_producto_id) references [DML].[Tbl_Producto](producto_id)
)
Go

Print 'Finalizando 6 Tabla-Tbl_Detalle_Venta'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

