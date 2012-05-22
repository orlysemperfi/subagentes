<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/TravelIndex.master" Debug="true" CodeFile="RegistroAfiliacion.aspx.vb" Inherits="pages_ApvEvaComercial" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MenuDerecha" runat="server">
    <table id="Menu_left1_dlSMenu" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
<tbody>
<tr>
<td style="height: 133px">

<div id="menuder02">
<table id="Menu_left1_dlSMenu_ctl00_dlModulo" cellspacing="0" cellpadding="0" border="0" style="border-width:0px;width:100%;border-collapse:collapse;">
    <tbody>
        <tr>
            <td>
                 
            </td>
        </tr>
        
     </tbody>
</table>
</div>
</td>
</tr>


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
        <td ><asp:TextBox name="txtNombreEmpresa" type="text" id="txtNombreEmpresa" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox>
        </td>
        <td>Razón Social</td>
        <td ><asp:TextBox name="txtRazonSocial" type="text" id="txtRazonSocial" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Tipo Documento</td>
        <td >
            &nbsp;<asp:DropDownList ID="cboTipoDocumentoEmpresa" runat="server" Height="16px" 
                Width="147px">
                <asp:ListItem Value="RUC"></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Número Documento</td>
        <td ><asp:TextBox name="txtNumeroDcoumento" type="text" id="txtNumeroDcoumento" class="graybuttonNormal" style="width:94px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Territorio Solicitante</td>
        <td >
            &nbsp;<asp:DropDownList ID="cboTerritorioSolicitante" runat="server" Height="16px" 
                Width="148px">
                <asp:ListItem>PERU</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>INGLATERRA</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Dirección Solicitante</td>
        <td ><asp:TextBox name="txtDireccionSolicitante" type="text" id="txtDireccionSolicitante" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox></td>
    </tr> 
    <tr  class="TRlist3">
        <td>Código Postal</td>
        <td ><asp:TextBox name="txtCodigoPostal" type="text" id="txtCodigoPostal" class="graybuttonNormal" style="width:124px;" runat="server"></asp:TextBox></td>
        <td>WEB Solicitante</td>
        <td ><asp:TextBox  name="txtWebSoliciiante" type="text" id="txtWebSoliciiante" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Correo Solicitante</td>
        <td ><asp:TextBox  name="txtCorreoSolicitante" type="text" id="txtCorreoSolicitante" class="graybuttonNormal" style="width:124px;" runat="server"></asp:TextBox></td>
        <td>Telféfono Empresa</td>
        <td ><asp:TextBox  name="txtTelefonoEmpresa" type="text" id="txtTelefonoEmpresa" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Fecha Inicio Operaciones</td>
        <td >
            <asp:TextBox name="txtFechaInicioOperaciones" type="text" id="txtFechaInicioOperaciones" class="graybuttonNormal" style="width:84px;" runat="server"></asp:TextBox>&nbsp;
            <img alt="" src="res/img/search.gif" border="0" align="texttop">
        </td>
        <td>Nombre Representante</td>
        <td ><asp:TextBox name="txtNombreRepresentante" type="text" id="txtNombreRepresentante" class="graybuttonNormal" style="width:224px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Tipo Doc. Representante</td>
        <td >
            &nbsp;<asp:DropDownList ID="cboTipoDocumento" runat="server" Height="16px" Width="149px">
                <asp:ListItem>DNI</asp:ListItem>
                <asp:ListItem>CARNET EXTRANJERIA</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Núm. Doc. Representante</td>
        <td ><asp:TextBox name="txtNumeroDocumentoRepresentante" type="text" id="txtNumeroDocumentoRepresentante" class="graybuttonNormal" style="width:94px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Telféfono Representante</td>
        <td ><asp:TextBox name="txtTelefonoRepresentante" type="text" id="txtTelefonoRepresentante" class="graybuttonNormal" style="width:124px;" runat="server"></asp:TextBox></td>
        <td>Número Carta Fianza</td>
        <td ><asp:TextBox name="txtNumeroCartaFianza" type="text" id="txtNumeroCartaFianza" class="graybuttonNormal" style="width:124px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Nro. Certificado IATA</td>
        <td colspan=4><asp:TextBox name="txtNumeroCertificadoIata" type="text" id="txtNumeroCertificadoIata" class="graybuttonNormal" style="width:124px;" runat="server"></asp:TextBox></td>
    </tr>
    <tr  class="TRlist3">
        <td>Comentarios</td>
        <td colspan=4 ><asp:TextBox runat="server" TextMode="MultiLine" 
                name="txtComentarios" ID="txtComentarios" Height="54px" Width="526px"></asp:TextBox>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td colspan=8>
            &nbsp;<asp:Button runat="server" ID="btnGrabar" Text="Grabar" 
                CssClass="graybutton" />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="graybutton" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                CssClass="graybutton" />
            <asp:Button ID="Button1" runat="server" Text="Button" />
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