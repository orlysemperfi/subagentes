<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Acceso a la aplicación</title>
    
    <link href="res/css/estilos.css" type="text/css" rel="stylesheet" />
    <link href="res/css/cotizador.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        
        .Title
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            font-weight: bold;
            font-style: normal;
        }
        
        .style1
        {
            width: 60%;
        }
        
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
<div id="Div2"><p>&nbsp;</p></div>
    <table border=0 cellpadding=1 cellspacing=1 style="width: 100%; background-color:#F0F0F0"">
    <tr>
    <td class="style1" style="width:80%"><img src="images/Fondo_peru.jpg" 
            style="height: 70%; width: 100%"/>
    </td>
    <td align=center>
    <form name="FLogin" id="FLogin" runat="server">
    <div id="Login">
    
    <table border=0 cellpadding=1 cellspacing=1 style="width: 20%; background-color:#F0F0F0">
       <tr><td colspan=3>&nbsp;</td></tr>
       <tr><td>&nbsp;</td><td colspan=2>Iniciar Sesión</td></tr>
       <tr><td colspan=3>&nbsp;</td></tr>
       <tr>
       <td>&nbsp;</td><td><strong>Nombre de Usuario</strong></td><td>&nbsp;</td>
       </tr>

       <tr>
       <td>&nbsp;</td>
       <td>
       <asp:TextBox ID="txtNo_Login" runat="server" style="width:224px; height:22px; font-size:small" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNo_Login"
                        ErrorMessage="Escriba el nombre de usuario">*</asp:RequiredFieldValidator></td>
       </td><td>&nbsp;</td>
       </tr>

       <tr">
       <td>&nbsp;</td><td><strong>Contraseña</strong></td><td>&nbsp;</td>
       </tr>

       <tr>
       <td>&nbsp;</td>
       <td>
        <asp:TextBox id="txtNoclave_Usuario" runat="server" 
               style="width:224px; height:22px; font-size:small" TextMode="Password" ></asp:TextBox>       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNoclave_Usuario"
                        ErrorMessage="Escriba su contraseña">*</asp:RequiredFieldValidator>
       </td>
        <td>&nbsp;</td>
       </tr>       
       <tr><td colspan=3>&nbsp;</td></tr>
       <tr><td colspan=3 align=center><asp:Button id="btnIngresar" class="Loginbutton" text="Ingresar" runat="server"/></td></tr>
       <tr><td colspan=3>
           <asp:Label ID="lblMensaje" runat="server" 
               style="text-align: left; color: #FF0000;"></asp:Label></td></tr>

    </table>
    </div>

    </form>

    </td>    
    </tr>
    
    </table>
</body>
</html>
