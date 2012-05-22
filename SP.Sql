
CREATE PROCEDURE VT_CATEGORIA_INSERT
@CODCAT	CHAR(2),
@DESCAT VARCHAR(30)
AS
INSERT INTO TB_CATEGORIA
	(COD_CAT,DES_CAT)
	VALUES(@CODCAT,@DESCAT)
	
	
CREATE PROCEDURE VT_SUBAGENTE_INSERT
@Nu_codSubagente	INT,
@No_nomComercial VARCHAR(100),
@No_razonSocial VARCHAR(100),
@No_numDocumento VARCHAR (20),
@No_webSite VARCHAR(100),
@No_email VARCHAR(100),
@Fk_tipoDocumento INT,
@No_nomRepresentante VARCHAR(100),
@Fk_tipoDocRepresentante INT,
@No_numDocRepresentante VARCHAR(20),
@No_telefRepresentante VARCHAR(20),
@Fe_fecInicioOperaciones DATETIME,
@No_numeroCertificadoIata VARCHAR(30),
@Fl_estadoSubagente VARCHAR(1)
AS
INSERT INTO TB_Subagente
(Nu_codSubagente,No_nomComercial,No_razonSocial,No_numDocumento,No_webSite,No_email,Fk_tipoDocumento,No_nomRepresentante,Fk_tipoDocRepresentante,
No_numDocRepresentante,No_telefRepresentante,Fe_fecInicioOperaciones,No_numeroCertificadoIata,Fl_estadoSubagente)
VALUES
(@Nu_codSubagente,@No_nomComercial,@No_razonSocial,@No_numDocumento,@No_webSite,@No_email,@Fk_tipoDocumento,@No_nomRepresentante,@Fk_tipoDocRepresentante,
 @No_numDocRepresentante,@No_telefRepresentante,@Fe_fecInicioOperaciones,@No_numeroCertificadoIata,@Fl_estadoSubagente)

EXEC VT_SUBAGENTE_INSERT 1,'JUAN PEREZ','TRAVEL IQUITOS PERU S.A.C.','7687689076','WWW.TRAVELIQUITOSPERU.COM','traveliquitosperu@administrador.com',1,'ESTEBAN GARCIA',1,'65787698','5643567','19850124','7876789890','1'

SELECT * FROM TB_Solicitud
-- 						 
CREATE PROCEDURE VT_SOLICITUD_INSERT
@Fk_codSubagente	INT,
@Nu_numSolicitud INT,
@Fe_fecSolicitud DATETIME,
@Fk_usrSolicitante INT,
@Tx_comentSolicitante VARCHAR(255),
@Fk_codEvalComercial INT,
@Fe_fecEvalComercial DATETIME,
@Tx_comentEvalComercial VARCHAR(255),
@Fk_codRepresentanteLegal INT,
@Fe_fecRevisionRepLegal DATETIME,
@Tx_comentRepresentanteLegal VARCHAR(255),
@Fk_codAsistenteLegal INT,
@Fe_fecRevisionAsistLegal DATETIME,
@Tx_comentAsistLegal VARCHAR(255),
@En_calificacionCrediticia CHAR(1),
@Fk_codMotivoRechazo INT,
@Fk_reglaAfiliacion INT,
@Fk_estadoSolicitud INT
AS
INSERT INTO TB_Solicitud VALUES
(@Fk_codSubagente,@Nu_numSolicitud,@Fe_fecSolicitud,@Fk_usrSolicitante,@Tx_comentSolicitante,
 @Fk_codEvalComercial,@Fe_fecEvalComercial,@Tx_comentEvalComercial,@Fk_codRepresentanteLegal,
 @Fe_fecRevisionRepLegal,@Tx_comentRepresentanteLegal,@Fk_codAsistenteLegal,
 @Fe_fecRevisionAsistLegal,@Tx_comentAsistLegal,@En_calificacionCrediticia,
 @Fk_codMotivoRechazo,@Fk_reglaAfiliacion,@Fk_estadoSolicitud)



	

