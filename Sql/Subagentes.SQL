CREATE TABLE TB_Subagente (
	Nu_codSubagente INT NOT NULL,
	No_nomComercial VARCHAR ( 100 ) NOT NULL,
	No_razonSocial VARCHAR ( 100 ) NOT NULL,
	No_numDocumento VARCHAR ( 20 ) NOT NULL,
	No_webSite VARCHAR ( 100 ) NULL,
	No_email VARCHAR ( 100 ) NOT NULL,
	Fk_tipoDocumento INT NOT NULL,
	No_nomRepresentante VARCHAR ( 100 ) NOT NULL,
	Fk_tipoDocRepresentante INT NOT NULL,
	No_numDocRepresentante VARCHAR ( 20 ) NOT NULL,
	No_telefRepresentante VARCHAR ( 20 ) NOT NULL,
	Fe_fecInicioOperaciones DATETIME NOT NULL,
	No_numeroCertificadoIata VARCHAR ( 30 ) NOT NULL,
	Fl_estadoSubagente CHAR ( 1 ) NOT NULL,
	CONSTRAINT PK_TB_Subagente PRIMARY KEY NONCLUSTERED (Nu_codSubagente)
	)
GO

CREATE TABLE TB_TipoDocumento (
	Nu_codTipoDoc    INT NOT NULL,
	No_descTipoDoc	 VARCHAR ( 60 ) NOT NULL,
	Fl_estadoTipoDoc CHAR ( 1 ) NOT NULL,
	CONSTRAINT PK_TB_TipoDocumento PRIMARY KEY NONCLUSTERED (Nu_codTipoDoc)
	)
GO

ALTER TABLE TB_Subagente ADD CONSTRAINT FK_TB_Subagente_01 FOREIGN KEY (Fk_tipoDocumento) REFERENCES TB_TipoDocumento (Nu_codTipoDoc) 
GO
ALTER TABLE TB_Subagente ADD CONSTRAINT FK_TB_Subagente_02 FOREIGN KEY (Fk_tipoDocRepresentante) REFERENCES TB_TipoDocumento (Nu_codTipoDoc) 

GO

CREATE TABLE TB_Territorio (
	Nu_codTerritorio   INT NOT NULL,
	No_descTerritorio  VARCHAR ( 60 ) NOT NULL,
	Fl_estadoTerritorio CHAR ( 1 ) NOT NULL,
	CONSTRAINT PK_TB_Territorio PRIMARY KEY NONCLUSTERED (Nu_codTerritorio)
	)
GO

CREATE TABLE TB_Agencia (
	Fk_codSubagente		INT NOT NULL,
	Nu_codAgencia		INT	NOT NULL,
	No_descAegencia     VARCHAR ( 100 ) NOT NULL,
	No_direccion		VARCHAR ( 120 ) NOT NULL,
	No_telefono			VARCHAR ( 20 )  NOT NULL,
	No_codigoPostal		VARCHAR ( 5 )   NOT NULL,
	Fl_primaria			CHAR    ( 1 )   NOT NULL,
	Fk_codTerritorio	INT		 NOT NULL,
	Fl_estadoAgencia	CHAR(1)
	CONSTRAINT PK_TB_Agencia PRIMARY KEY NONCLUSTERED (Nu_codAgencia)
	)
GO

ALTER TABLE TB_Agencia ADD CONSTRAINT FK_TB_Agencia_01 FOREIGN KEY (Fk_codSubagente) REFERENCES TB_Subagente (Nu_codSubagente) 
GO

ALTER TABLE TB_Agencia ADD CONSTRAINT FK_TB_Agencia_02 FOREIGN KEY (Fk_codTerritorio) REFERENCES TB_Territorio (Nu_codTerritorio) 

GO

CREATE TABLE TB_MotivoRechazo (
	Nu_codMotivoRechazo INT NOT NULL,
	No_descCorta		VARCHAR ( 40 )  NOT NULL,
	No_descLarga		VARCHAR ( 80 )  NULL,
	En_tipoMotivo		CHAR	( 1  )	NOT NULL, -- 1 = AFILIACION , 2 = RENOVACION , 3 = CANCELACIÓN
	Fl_estadoMotivo  	CHAR	( 1  )  NOT NULL,
	CONSTRAINT PK_TB_MotivoRechazo PRIMARY KEY NONCLUSTERED (Nu_codMotivoRechazo)
	)
GO

CREATE TABLE TB_Persona (
	Nu_codPersona		INT NOT NULL,
	Fl_tipoPersona		CHAR	( 1  )	NOT NULL, -- 1 = Interno , 2 = Externo
	No_nombre			VARCHAR ( 50 )  NOT NULL,
	No_apePaterno		VARCHAR ( 40 )  NOT NULL,
	No_apeMaterno		VARCHAR ( 40 )  NULL,
	Fk_codTipoDoc		INT,
	Nu_numDocPersona	VARCHAR ( 20 )  NULL,
	En_estadoCivil		CHAR	( 1  ), -- S = SOLTERO, C = CASADO , V = VIUDO, D = DIVORCIADO 
	Fe_fecCreaPersona	DATETIME NOT NULL,
	Fl_estadoUsuario	CHAR	( 1  )  NOT NULL,
	CONSTRAINT PK_TB_Persona PRIMARY KEY NONCLUSTERED (Nu_codPersona)
	)

GO
ALTER TABLE TB_Persona ADD CONSTRAINT FK_TB_Persona_01 FOREIGN KEY (Fk_codTipoDoc) REFERENCES TB_TipoDocumento (Nu_codTipoDoc) 
GO

CREATE TABLE TB_Usuario (
	Nu_codUsuario		INT NOT NULL,
	No_login			VARCHAR ( 40 )  NOT NULL,
	No_claveUsuario		VARCHAR ( 80 )  NULL,
	Fl_tipoUsuario		CHAR	( 1  )	NOT NULL, -- 1 = Interno , 2 = Externo
	Fe_fecCreacion		DATETIME NOT NULL,
	Fe_fecExpiracion	DATETIME NULL,
	Fk_codPersona		INT	NOT NULL,
	Fl_estadoUsuario	CHAR	( 1  )  NOT NULL,
	CONSTRAINT PK_TB_Usuario PRIMARY KEY NONCLUSTERED (Nu_codUsuario)
	)

ALTER TABLE TB_Usuario ADD CONSTRAINT FK_TB_Usuario_01 FOREIGN KEY (Fk_codPersona) REFERENCES TB_Persona (Nu_codPersona) 
GO

CREATE TABLE TB_ReglaAfiliacion (
	Nu_reglaAfiliacion				SMALLINT NOT NULL,
	Qt_mesOperacion					SMALLINT NOT NULL,
	Qt_renovaDiasVencimiento		SMALLINT NOT NULL,
	Fl_permiteAfiliacionCancelados	CHAR (1) NOT NULL, -- 0 = NO , 1 = SI
	En_tipoCalificacionHasta		CHAR(1) NOT NULL, -- 0 = NORMAL, 1 = CPP , 2 = DEFICIENTE, 3 = DUDOSO, 4 = PÉRDIDA
	Fl_estadoRegla					CHAR (1) NOT NULL, 	-- 0 = NO VIGENTE , 1 =  VIGENTE
	CONSTRAINT PK_TB_ReglaAfiliacion PRIMARY KEY NONCLUSTERED (Nu_reglaAfiliacion)
	)
GO
CREATE TABLE TB_EstadoSolicitud (
	Nu_codEstadoSolic				SMALLINT NOT NULL,
	No_descEstado					VARCHAR ( 20 ) NOT NULL,
	En_tipoEstado					CHAR(1) NOT NULL, -- 1 = AFILIACION , 2 = RENOVACION , 3 = CANCELACIÓN
	Fl_estado						CHAR (1) NOT NULL, 	-- 0 = INACTIVO , 1 = ACTIVO
	CONSTRAINT PK_TB_EstadoSolicitud PRIMARY KEY NONCLUSTERED (Nu_codEstadoSolic)
	)
GO

CREATE TABLE TB_Solicitud (
	Fk_codSubagente				INT NOT NULL,
	Nu_numSolicitud				INT NOT NULL,
	Fe_fecSolicitud				DATETIME NOT NULL,
	Fk_usrSolicitante			INT,
	Tx_comentSolicitante		VARCHAR ( 255 ) NULL,
	Fk_codEvalComercial			INT		 NULL,
	Fe_fecEvalComercial			DATETIME NULL,
	Tx_comentEvalComercial		VARCHAR ( 255 ) NULL,
	Fk_codRepresentanteLegal	INT		 NULL,
	Fe_fecRevisionRepLegal		DATETIME NULL,
	Tx_comentRepresentanteLegal VARCHAR ( 255 ) NULL,
	Fk_codAsistenteLegal		INT		 NULL,
	Fe_fecRevisionAsistLegal	DATETIME NULL,
	Tx_comentAsistLegal			VARCHAR ( 255 ) NULL,
	En_calificacionCrediticia	CHAR ( 1) NOT NULL, -- 0 = NORMAL, 1 = CPP , 2 = DEFICIENTE, 3 = DUDOSO, 4 = PÉRDIDA
	Fk_codMotivoRechazo			INT  NULL,
	Fk_reglaAfiliacion			SMALLINT  NOT NULL,
	Fk_estadoSolicitud			SMALLINT  NOT NULL,
	CONSTRAINT PK_TB_Solicitud PRIMARY KEY NONCLUSTERED (Nu_numSolicitud)
	)
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_01 FOREIGN KEY (Fk_codSubagente) REFERENCES TB_Subagente (Nu_codSubagente) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_02 FOREIGN KEY (Fk_usrSolicitante) REFERENCES TB_Persona (Nu_codPersona) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_03 FOREIGN KEY (Fk_codEvalComercial) REFERENCES TB_Persona (Nu_codPersona) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_04 FOREIGN KEY (Fk_codRepresentanteLegal) REFERENCES TB_Persona (Nu_codPersona) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_05 FOREIGN KEY (Fk_codAsistenteLegal) REFERENCES TB_Persona (Nu_codPersona) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_06 FOREIGN KEY (Fk_codMotivoRechazo) REFERENCES TB_MotivoRechazo(Nu_codMotivoRechazo) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_07 FOREIGN KEY (Fk_reglaAfiliacion) REFERENCES TB_ReglaAfiliacion (Nu_reglaAfiliacion) 
GO
ALTER TABLE TB_Solicitud ADD CONSTRAINT FK_TB_Solicitud_08 FOREIGN KEY (Fk_estadoSolicitud) REFERENCES TB_EstadoSolicitud (Nu_codEstadoSolic) 
GO

CREATE TABLE TB_SolicitudAfiliacion (
	Fk_numSolicitud						INT NOT NULL,
	Co_numeroCartaFianza				VARCHAR ( 30 ) NULL,
	Fk_codEvalFinanciero				INT		 NULL,
	Fe_fecEvalFinanciera				DATETIME NULL,
	Tx_comentEvalFinanciera				VARCHAR ( 255 ) NOT NULL,
	En_omisionTributaria				CHAR	( 1 )   NOT NULL DEFAULT ('0') , -- 0 = NO REVISADO , 1 = SI , 2 = NO 
	En_verificadoSunat					CHAR	( 1 )   NOT NULL DEFAULT ('0'), -- 0 = NO REVISADO , 1 = SI , 2 = NO
	En_cartaFianzaValidada				CHAR	( 1 )   NOT NULL DEFAULT ('0'), -- 0 = NO REVISADO , 1 = SI , 2 = NO
	En_inscritaDirectorio				CHAR	( 1 )   NOT NULL DEFAULT ('0'), -- 0 = NO REVISADO , 1 = SI , 2 = NO
	CONSTRAINT PK_TB_SolicitudAfiliacion250 PRIMARY KEY NONCLUSTERED (Fk_numSolicitud)
	)
GO
ALTER TABLE TB_SolicitudAfiliacion ADD CONSTRAINT FK_TB_SolicitudAfiliacion_01 FOREIGN KEY (Fk_numSolicitud) REFERENCES TB_Solicitud (Nu_numSolicitud) 

GO

