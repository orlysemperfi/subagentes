Imports BussinesEntities
Imports System.Data.SqlClient

Public Class DA_Usuario
    Dim ConexionDAO As New ConexionDAO

    Shared Function GetUsuario(ByVal strNoLogin As String, ByVal strNoclaveUsuario As String) As BE_Usuario
        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        Dim BE_Usuario As New BE_Usuario

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SP_Usuario"

        'Se crea el objeto Parameters por cada parametro
        cmd.Parameters.Add(New SqlClient.SqlParameter("@NO_LOGIN", SqlDbType.VarChar, 40))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@NO_CLAVEUSUARIO", SqlDbType.VarChar, 80))
        'Se establece los valores para cada parametro
        cmd.Parameters("@NO_LOGIN").Value = strNoLogin
        cmd.Parameters("@NO_CLAVEUSUARIO").Value = strNoclaveUsuario

        Try
            cnx.Open()
            dr = cmd.ExecuteReader

            If dr.HasRows Then
                While dr.Read
                    BE_Usuario.No_Login = dr("NO_LOGIN")
                    BE_Usuario.No_claveUsuario = dr("NO_CLAVEUSUARIO")
                    BE_Usuario.Fl_tipoUsuario = dr("FL_TIPOUSUARIO")
                End While
            End If
            cnx.Close()
            Return BE_Usuario
        Catch ex As Exception
            Throw New Exception(ex.Message)
        End Try

    End Function
End Class
