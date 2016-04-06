-- =================================================
-- Autor:			Gerimar, Gerardo, Diego
-- Fecha:			31/03/2016
-- Descripción:		ProceduresMaestroDetalle
-- Versión:			1.0.0
-- =================================================

use MaestroDetalleSoftware

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '1 INICIA PROCEDURE Insertar_Cliente 1'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Ins_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Ins_Cliente]
END
GO

CREATE PROCEDURE [DML].[Ins_Cliente]
@Pk_tbl_Cliente			int OUTPUT,
@nombre					varchar(50),
@nit					int

AS
BEGIN
INSERT INTO [DML].[Tbl_Cliente]         
values (@nombre,@nit)
SET @Pk_tbl_Cliente	 = SCOPE_IDENTITY();
select @Pk_tbl_Cliente = @@IDENTITY
END
GO
PRINT '1 FINALIZA PROCEDURE Insertar_Cliente 1'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [DML].[Ins_Cliente] null,'gerimar',71328041
exec [DML].[Ins_Cliente] null,'gerardo',71025879
exec [DML].[Ins_Cliente] null,'marilin',71328041
exec [DML].[Ins_Cliente] null,'natalia',71328041
exec [DML].[Ins_Cliente] null,'soledad',71328041
exec [DML].[Ins_Cliente] null,'marlene',71328041
exec [DML].[Ins_Cliente] null,'sofia',71328041
exec [DML].[Ins_Cliente] null,'julita',71328041
exec [DML].[Ins_Cliente] null,'nahily',71328041
select * from [DML].[Tbl_Cliente]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '2 INICIA PROCEDURE Upd_Cliente 2'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Upd_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Upd_Cliente]
END
GO

CREATE PROCEDURE [DML].[Upd_Cliente]
@Pk_tbl_Cliente		int,
@nombre				varchar(50),
@nit			int
as
begin
update [DML].[Tbl_Cliente] set nombre = @nombre, nit = @nit
where  cliente_id = @Pk_tbl_Cliente;
end
go

PRINT '2 FINALIZA PROCEDURE upd-Cliente 2'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
-- exec [DML].[Upd_Cliente] 2,'gerardo',71025879
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '3 INICIA PROCEDURE Drop_Cliente 3'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Drop_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Drop_Cliente]
END
GO

CREATE PROCEDURE [DML].[Drop_Cliente]
@Pk_tbl_Cliente			int
AS
BEGIN
delete from [DML].[Tbl_Cliente]
WHERE cliente_id = @Pk_tbl_Cliente;
end
go
PRINT '3 FINALIZA PROCEDURE Drop_Cliente 3'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
-- exec [DML].Drop_Cliente 9
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '1 INICIA PROCEDURE Select_Producto 0'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Select_Producto]') 
AND OBJECTPROPERTY(id, N'Select_Producto') = 1)
BEGIN
	DROP PROCEDURE [DML].[Select_Producto]
END
GO

CREATE PROCEDURE [DML].[Select_Producto]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_Producto]
END
GO
PRINT '1 FINALIZA PROCEDURE Select_Producto 0'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [DML].[Select_Producto]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '1 INICIA PROCEDURE Ins_Producto 1'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Ins_Producto]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Ins_Producto]
END
GO

CREATE PROCEDURE [DML].[Ins_Producto]
@PK_Tbl_Producto			int OUTPUT,
@nombre						varchar(50),
@precio						int

AS
BEGIN
INSERT INTO [DML].[Tbl_Producto]         
values (@nombre,@precio)
SET @PK_Tbl_Producto	 = SCOPE_IDENTITY();
select @PK_Tbl_Producto = @@IDENTITY
END
GO
PRINT '1 FINALIZA PROCEDURE Ins_Producto 1'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [DML].[Ins_Producto] null,'Zapato',350
exec [DML].[Ins_Producto] null,'Mochila',46
exec [DML].[Ins_Producto] null,'Polera',150
exec [DML].[Ins_Producto] null,'Tennis',400
exec [DML].[Ins_Producto] null,'Guantes',15
select * from [DML].[Tbl_Producto]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '2 INICIA PROCEDURE Upd_Producto 2'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Upd_Producto]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Upd_Producto]
END
GO

CREATE PROCEDURE [DML].[Upd_Producto]
@PK_Tbl_Producto			int OUTPUT,
@nombre						varchar(50),
@precio						int

as
begin
update [DML].[Tbl_Producto] set nombre = @nombre, precio = @precio
where  producto_id = @PK_Tbl_Producto;
end
go

PRINT '2 FINALIZA PROCEDURE Upd_Producto 2'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
-- exec [DML].[Upd_Producto] 2,'Pelota',26
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '3 INICIA PROCEDURE Drop_Producto 3'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[DML].[Drop_Producto]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [DML].[Drop_Producto]
END
GO

CREATE PROCEDURE [DML].[Drop_Producto]
@PK_Tbl_Producto			int
AS
BEGIN
delete from [DML].[Tbl_Producto]
WHERE producto_id = @PK_Tbl_Producto;
end
go
PRINT '3 FINALIZA PROCEDURE Drop_Producto 3'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
-- exec [DML].Drop_Producto 5
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------