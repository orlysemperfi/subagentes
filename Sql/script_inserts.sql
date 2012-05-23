delete from TB_Usuario
delete from TB_Persona
delete from TB_TipoDocumento
delete from TB_EstadoSolicitud
delete from TB_ReglaAfiliacion
delete from TB_MotivoRechazo
delete from TB_Solicitud
delete from TB_Subagente 

go
insert into TB_TipoDocumento values (1,'DNI', 1)
insert into TB_TipoDocumento values (2,'RUC',1)
insert into TB_TipoDocumento values (3,'CARNET DE EXT.',1)
insert into TB_TipoDocumento values (4,'DOC. EMP. EXT.',1)

insert into TB_EstadoSolicitud values (1,'REGISTRADA',1,1)
insert into TB_EstadoSolicitud values (2,'PENDIENTE',	1,1)
insert into TB_EstadoSolicitud values (3,'REVISADA',1,1)
insert into TB_EstadoSolicitud values (4,'ATENDIDA',1,1)
insert into TB_EstadoSolicitud values (5,'RECHAZADO',1,1)

insert into TB_ReglaAfiliacion values (1,6,30,'0','1','1')

insert into TB_MotivoRechazo values (1,'NO CUMPLE POLÍTICAS','NO CUMPLE POLÍTICAS DE AFILIACIÓN','1','1')
insert into TB_MotivoRechazo values (2,'NO PASÓ EVAL. COMERCIAL','NO PASÓ EVALUACIÓN COMERCIAL','1','1')
insert into TB_MotivoRechazo values (3,'NO PASÓ EVAL. FINANCIERA','NO PASÓ EVAL. FINANCIERA','1','1')
insert into TB_MotivoRechazo values (4,'INHABILITADO LEGAL','INHABILITADO LEGAL','1','1')

insert into TB_Persona values (1,1,'JOSE','DEL RIO', 'ORTEGA',1,'40260645','S',GETDATE(),1)
insert into TB_Persona values (2,1,'JUAN','CUCHO', 'ANTUNEZ',1,'40286677','S',GETDATE(),1)
insert into TB_Persona values (3,1,'GIOVANNA','ARONI', 'GALINDO',1,'40639755','S',GETDATE(),1)
insert into TB_Persona values (4,1,'YOMAIRA','MONROY', 'HERRERA',1,'86786433','S',GETDATE(),1)
insert into TB_Persona values (5,1,'CARLOS', 'JULCAPOMA','PEREZ', 1,'97564777','S',GETDATE(),1)
insert into TB_Persona values (6,2,'ROBERT0','MOTTA', 'SEBASTIANI',4,'765564444','S',GETDATE(),1)

insert into TB_Usuario
select	p.Nu_codPersona, p.No_nombre, p.No_nombre, 1,GETDATE(),GETDATE()+120,p.Nu_codPersona,1 
from	TB_Persona p

insert into TB_Subagente 
values (1, 'TMS TRAVEL S.A.','TMS TRAVEL S.A.','TMS85747585', 'WWW.TMS.ORG','TMS@TMSTRAVEL.COM',4,
'ROBERTO MOTTA SEBASTIANI', 4,'765564444', '5885934905', GETDATE()- 360, 'TMS-4757877', 1)

insert into TB_Solicitud values 
(1,1,GETDATE()-38,1,'Se solicita inscripción',null,null,null,null,null,null,null,null,null,0,null,1,1)

