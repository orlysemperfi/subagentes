<%@ Page Language="VB" AutoEventWireup="true"  MasterPageFile="~/TravelIndex.master" CodeFile="ConsultaAfiliacion.aspx.vb" Debug="true"  Inherits="ConsultaAfiliacion" %>

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

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="contenidoModulo">
<script type="text/javascript">
//<![CDATA[
    function Actualizar(intID) {
        location.href = 'ActualizaAfiliacion.aspx?intSolicitud=' + intID;
    }

    function Eliminar(intID) {
        var Rpta;
        Rpta = window.confirm('Esta seguro de eliminar esta solicitud');
        if (Rpta == true) {
            window.FrmConsultaSolicitud.txtAction.value = "ELIMINAR";
            window.FrmConsultaSolicitud.intSolicitud.value = intID;
            window.FrmConsultaSolicitud.submit();
        }
    }

    function Revisar(intID) {
        location.href = 'RevisarSolicitud.aspx?intSolicitud=' + intID;
    }

    function Mensaje() {
        alert('El estado actual de esta solicitud no permite realizar esta acción.')
    }
//]]>
</script>
    <form id="FrmConsultaSolicitud" runat="server"  method="post" action="">
        <asp:HiddenField id="intSolicitud" runat="server" />
        <asp:HiddenField id="txtAction" runat="server" />
        <div id="titulo">
            Consulta de Solicitudes de Afiliación
        </div>
        <p>En esta sección Ud. podrá consultar sus solicitudes de afiliación.</p>
        <table style="WIDTH: 80%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
            <tr>
                <td class="TDPanel">
                    <p>Seleccione los criterios de búsqueda deseados&nbsp;</p>
                    <table border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr id="TRCodigo">
                                                <td width="120px"><strong>Fecha de Registro: </strong></td>
                                                <td style="HEIGHT: 21px">
                                                     <asp:TextBox runat="server" ID="txtFecRegIni" CssClass="graybutton" style="width:70px;"> </asp:TextBox>&nbsp;-&nbsp;
                                                     <asp:TextBox runat="server" ID="txtFecRegFin" CssClass="graybutton" style="width:70px;"> </asp:TextBox>
                                                </td>
                                                <td width="20px">&nbsp;</td>
                                                <td width="120px"><strong>Fecha de Atención: </strong></td>
                                                <td style="HEIGHT: 21px">
                                                    <asp:TextBox runat="server" ID="txtFecAteIni" CssClass="graybutton" style="width:70px;"> </asp:TextBox>&nbsp;-&nbsp;
                                                    <asp:TextBox runat="server" ID="txtFecAteFin" CssClass="graybutton" style="width:70px;"> </asp:TextBox>
                                                </td>
                                                <td width="20px">&nbsp;</td>
                                                <td width="120px"><strong>Situación Solicitud: </strong></td>
                                                <td style="HEIGHT: 21px">
                                                    <asp:DropDownList ID="lstEstado" runat="server"></asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan=8>
                                                    <asp:Button ID="btnBuscar"  EnableViewState=true runat="server" Text="Buscar" CssClass="graybutton" style="width:80px;" />&nbsp;
                                                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="graybutton"  style="width:80px;" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
        </table>
        <br>
        <table border=0 cellpadding=1 cellspacing=1 width=80% >
            <tr >
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
                        GridLines="Vertical" Width="100%" EnableViewState="False">
                        <RowStyle BackColor="#F0F0F0" />
                        <Columns>
                            <asp:BoundField DataField="Numero" HeaderText="Número">
                                <ItemStyle HorizontalAlign="Center" width="15%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa">
                                <ItemStyle HorizontalAlign="Center"  />
                            </asp:BoundField>
                            <asp:BoundField DataField="FechaSolicitud" HeaderText="Fecha Registro">
                                <ItemStyle HorizontalAlign="Center" width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FechaAtencion" HeaderText="Fecha Atención">
                                <ItemStyle HorizontalAlign="Center" width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DescSituacion" HeaderText="Situación">
                                <ItemStyle HorizontalAlign="Center" width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="situacion" HeaderText="CodSituacion" Visible="false">
                                <ItemStyle HorizontalAlign="Center" width="1%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Actualizar">
                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                <ItemTemplate>
                                    <img src="images/lapiz_icon.gif"  alt="Editar" border="0" style="cursor:hand" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eliminar">
                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                <ItemTemplate>
                                    <img src="images/delete_icon.gif"  alt="Editar" style="cursor:hand" border="0"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Revisar">
                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                <ItemTemplate>
                                    <img src="images/lapiz_icon.gif"  alt="Revisar" style="cursor:hand" border="0"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br>
        <table border=0 cellpadding=1 cellspacing=1 width=80% >
            <tr>
                <td align=right>
                    <input type="button" name="btnSalir" value="Salir" id="btnSalir" class="graybutton" style="width:80px;" onclick="javascript:location.href='Default.aspx';">&nbsp;
                </td>
            </tr>
        </table>                                            
    </form>
    </asp:Content>

