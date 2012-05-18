<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/TravelIndex.master" CodeFile="RegistroAfiliacion.aspx.vb" Inherits="pages_ApvEvaComercial" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MenuDerecha" runat="server">
    <table id="Menu_left1_dlSMenu" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
<tbody>
<tr>
<td style="height: 133px">
<span id="Menu_left1_dlSMenu_ctl00_lblSMenu" class="tdnolink">Trámites</span>
<div id="menuder02">
<table id="Menu_left1_dlSMenu_ctl00_dlModulo" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <!--
                Colocar la clase tdnolink cuando se muestre la interfaz de la opción seleccionada
                Ejemplo:
                <a id="A7" href="ConsultaInformeFinanciero.aspx" class="tdnolink">Informe Financiero</a> 
                !-->  
                <a id="A7" href="ConsultaInformeFinanciero.aspx">Informe Financiero</a> 
            </td>
        </tr>
        <tr>
            <td>
                <a id="A27" href="ConsultaAfiliacion.aspx" class="tdnolink">Solicitud de Afiliación</a> 
            </td>
        </tr>
        <tr>
            <td>
                <a id="A26" href="ConsultaRenovacion.aspx">Solicitud de Renovación</a>
            </td>
        </tr>
        <tr>
            <td>
                <a id="A25" href="ConsultaCancelacion.aspx">Solicitud de Cancelación</a>
            </td>
        </tr>
        <tr>
            <td>
                <a id="A3" href="ConsultaApEvaComercial.aspx">Aprobación de Evaluación Comercial</a>
            </td>
        </tr>
        <tr>
            <td>
                <a id="A4" href="ConsultaApEvaFinanciera.aspx">Aprobación de Evaluación Financiera</a>
            </td>
        </tr>
     </tbody>
</table>
</div>
</td>
</tr>
<!--
Inicio 
!-->  
<tr>
<td style="height: 55px">
<span id="Span1" class="tdnolink">Contratos</span>
<div id="menuder02A">
<table id="Table2" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <a id="A1" href="ConsultaContrato.aspx">Contrato</a>  
            </td>
        </tr>
        <tr>
            <td>
                <a id="A2" href="ConsultaContratoAutorizar.aspx">Autorizar Contrato</a>
            </td>
        </tr>        
     </tbody>
</table>
</div>
</td>
</tr>
<!--
Fin
!-->  

<!--
Inicio 
!-->  
<tr>
<td style="height: 30px">
<span id="Span5" class="tdnolink">Administración</span>
<div id="menuder02E">
<table id="Table5" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <a id="A13" href="ActualizaReglasAfiliacion.aspx">Actualizar Reglas de Afiliación</a> 
            </td>
        </tr>
     </tbody>
</table>
</div>
</td>
</tr>
<!--
Fin
!-->  
<!--
Inicio 
!-->  
<tr>
<td style="height: 53px">
<span id="Span2" class="tdnolink">Seguimiento</span>
<div id="menuder02B">
<table id="Table1" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <a id="A5" href="ConsultaReclamo.aspx">Seguimiento de Reclamos</a> 
            </td>
        </tr>
        <tr>
            <td>
                <a id="A14" href="ConsultaSubagente.aspx">Actualizar Subagente</a> 
            </td>
        </tr>
     </tbody>
</table>
</div>
</td>
</tr>
<!--
Fin
!-->  
<!--
Inicio 
!-->  
<tr>
<td style="height: 53px">
<span id="Span3" class="tdnolink">Informes</span>
<div id="menuder02C">
<table id="Table3" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <a id="A6" href="CriteriosSeguimiento.aspx">Desempeño de Subagente</a>
            </td>
        </tr>
		<tr>
            <td>
                <a id="A9" href="CriteriosComision.aspx">Reporte de Comisiones</a> 
            </td>
        </tr>
		<tr>
			<td>
                <a id="A9" href="CriteriosTramiteSubagente.aspx">Reporte de Trámites </a>
			</td>
        </tr>
		<tr>
			<td>
                <a id="A9" href="GenerarReporteContratos.aspx">Reporte de Contratos de Subagentes</a>
			</td>
        </tr>
	</tbody>
</table>
</div>
</td>
</tr>
<!--
Fin
!-->  

<!--
Inicio
!--> 
<tr>
<td style="height: 53px">
<span id="Span4" class="tdnolink">Configuración</span>
<div id="menuder02D">
<table id="Table4" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                <a id="A8" href="ConsultaMotivoRechazo.aspx" >Motivo Rechazo</a> 
            </td>
        </tr>
		<tr>
            <td>
                <a id="A8" href="ConsultaReglaPagoSubagente.aspx" >Reglas Pago de Subagente</a> 
            </td>
        </tr>
		<tr>
            <td>
                <a id="A10" href="ConsultaComisionesSubagente.aspx" >Comisión Subagente</a>  
            </td>
        </tr>
		<tr>
            <td>
                <a id="A11" href="ConsultaAgencia.aspx" >Agencia</a> 
            </td>
        </tr>
		<tr>
            <td>
                <a id="A12" href="ConsultaTerritorio.aspx" >Territorio</a> 
            </td>
        </tr>
     </tbody>
</table>
</div>
</td>
</tr>
<!--
Fin
!--> 

</tbody>
</table>
</asp:Content>




<asp:Content runat="server" ContentPlaceHolderID="contenidoModulo"><div id="titulo">
    Registro de Solicitud de Afiliación</div><form name="Form1" method="post" action="" id="Form2"><div><input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value=""> <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value=""> <input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value=""> <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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"> </div>
<script type="text/javascript">
//<![CDATA[
    var theForm = document.forms['Form1'];
    if (!theForm) {
        theForm = document.Form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
//]]>
</script>
<div></div><p>En esta sección Ud. podrá registrar la solicitud de afiliación.</p>
<table border=0 cellpadding=1 cellspacing=1 width=80%>
    <tr  class="TRlist3">
        <td colspan=4><u>Solicitud de Afiliación</u></td>
    </tr>
    <tr  class="TRlist3">
        <td>Nombre Empresa</td>
        <td ><input name="txtApePatCli" type="text" id="txtApePatCli" class="graybuttonNormal" style="width:224px;"></td>
        <td>Razón Social</td>
        <td ><input name="txtApePatCli" type="text" id="Text1" class="graybuttonNormal" style="width:224px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Tipo Documento</td>
        <td >
            <SELECT  style="width:150PX;">
                <OPTION>RUC</OPTION>
            </SELECT>
        </td>
        <td>Número Documento</td>
        <td ><input name="txtApePatCli" type="text" id="Text3" class="graybuttonNormal" style="width:94px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Territorio Solicitante</td>
        <td >
            <SELECT  style="width:150PX;">
                <OPTION>PERÚ</OPTION>
                <OPTION>USA</OPTION>
                <OPTION>INGLATERRA</OPTION>
            </SELECT>
        </td>
        <td>Dirección Solicitante</td>
        <td ><input name="txtApePatCli" type="text" id="Text5" class="graybuttonNormal" style="width:224px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Código Postal</td>
        <td ><input name="txtApePatCli" type="text" id="Text4" class="graybuttonNormal" style="width:124px;"></td>
        <td>WEB Solicitante</td>
        <td ><input name="txtApePatCli" type="text" id="Text2" class="graybuttonNormal" style="width:224px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Correo Solicitante</td>
        <td ><input name="txtApePatCli" type="text" id="Text6" class="graybuttonNormal" style="width:124px;"></td>
        <td>Telféfono Empresa</td>
        <td ><input name="txtApePatCli" type="text" id="Text7" class="graybuttonNormal" style="width:224px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Fecha Inicio Operaciones</td>
        <td >
            <input name="txtApePatCli" type="text" id="Text8" class="graybuttonNormal" style="width:84px;">&nbsp;
            <img alt="" src="../res/img/search.gif" border="0" align="texttop">
        </td>
        <td>Nombre Representante</td>
        <td ><input name="txtApePatCli" type="text" id="Text9" class="graybuttonNormal" style="width:224px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Tipo Doc. Representante</td>
        <td >
            <SELECT  style="width:150PX;">
                <OPTION>DNI</OPTION>
                <OPTION>CARNET EXTRANJERÍA</OPTION>
            </SELECT>
        </td>
        <td>Núm. Doc. Representante</td>
        <td ><input name="txtApePatCli" type="text" id="Text10" class="graybuttonNormal" style="width:94px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Telféfono Representante</td>
        <td ><input name="txtApePatCli" type="text" id="Text11" class="graybuttonNormal" style="width:124px;"></td>
        <td>Número Carta Fianza</td>
        <td ><input name="txtApePatCli" type="text" id="Text12" class="graybuttonNormal" style="width:124px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Nro. Certificado IATA</td>
        <td colspan=4><input name="txtApePatCli" type="text" id="Text13" class="graybuttonNormal" style="width:124px;"></td>
    </tr>
    <tr  class="TRlist3">
        <td>Comentarios</td>
        <td colspan=4 ><textarea cols=80 rows=5></textarea></td>
    </tr>
</table>
<table>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td colspan=8>
            <input type="button" name="btnUpdProspecto" value="Grabar" id="btnUpdProspecto" class="graybutton" style="width:80px;" onclick="javascript:window.alert('Los datos se guardaron satisfactoriamente');location.href='ConsultaAfiliacion.aspx';">&nbsp;
            <input type="button"  name="btnUpdProspecto" value="Enviar" id="Submit1" class="graybutton" style="width:80px;" onclick="javascript:window.alert('Los datos se guardaron y enviaron satisfactoriamente');location.href='ConsultaAfiliacion.aspx';" >&nbsp;                                        
            <input type="button"  name="btnUpdProspecto" value="Cancelar" id="Button1" class="graybutton" style="width:80px;" onclick="javascript:Cancela();" >
        </td>
    </tr>

</table>                                            
    
<script type="text/javascript">
//<![CDATA[
    var Page_ValidationSummaries = new Array(document.getElementById("ValidationSummary1"));
//]]>

function Cancela()
{
    var Rpta;
    if (window.confirm('¿Está seguro de cancelar la operación?') == true)
    {
        location.href='ConsultaAfiliacion.aspx';
    }
}
</script>

<script type="text/javascript">
//<![CDATA[
    var ValidationSummary1 = document.all ? document.all["ValidationSummary1"] : document.getElementById("ValidationSummary1");
    
    
//]]>
</script>
</form>

</asp:Content>