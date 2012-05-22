USE [BD_Subagente]
GO

/****** Object:  StoredProcedure [dbo].[SP_Usuario]    Script Date: 05/21/2012 23:32:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Yomaira
-- Create date: 20/05/2012
-- Description:	Procedure de Usuarios
-- =============================================
CREATE PROCEDURE [dbo].[SP_Usuario] 
	@NO_LOGIN varchar(40),
	@NO_CLAVEUSUARIO varchar(80)
AS
BEGIN	
	SELECT [Nu_codUsuario]
      ,[No_login]
      ,[No_claveUsuario]
      ,[Fl_tipoUsuario]
      ,[Fe_fecCreacion]
      ,[Fe_fecExpiracion]
      ,[Fk_codPersona]
      ,[Fl_estadoUsuario]
  FROM [BD_Subagente].[dbo].[TB_Usuario]
  WHERE [No_login] = @NO_LOGIN
  AND NO_CLAVEUSUARIO = @NO_CLAVEUSUARIO
END

GO

