Imports BussinesEntities
Imports BussinesLogicLayer

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnIngresar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnIngresar.Click
        Dim strNo_Login As String
        If txtNo_Login.Text.Trim.Length = 0 Or txtNoclave_Usuario.Text.Trim.Length = 0 Then
            lblMensaje.Text = "Ingrese su usuario y contraseña"
        Else
            Try

            
                strNo_Login = BL_Usuario.GetUsuario(txtNo_Login.Text.ToString, txtNoclave_Usuario.Text.ToString).No_Login.ToString()

                If String.Equals(txtNo_Login.Text.ToString.ToUpper, strNo_Login.ToString.ToUpper) Then
                    'lblMensaje.Text = txtNo_Login.Text.ToString & " " & strNo_Login.ToString
                    Response.Redirect("RegistroAfiliacion.aspx")
                Else
                    lblMensaje.Text = "Usuario y/o contraseña incorrecta"

                End If

            Catch ex As Exception
                lblMensaje.Text = "Usuario y/o contraseña incorrecta"
            End Try

        End If
    End Sub
End Class
