Imports BussinesEntities
Imports System.Data.SqlClient

Public Class DA_Solicitud
    Dim ConexionDAO As New ConexionDAO
    Shared Function Insert(ByVal BE As BE_Solicitud) As Boolean
        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim cmd As New SqlCommand

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "VT_SOLICITUD_INSERT"

        'Se crea el objeto Parameters por cada parametro
        cmd.Parameters.Add(New SqlClient.SqlParameter("@CO_numeroSolicitud", SqlDbType.Char, 2))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Fe_fecha", SqlDbType.VarChar, 30))

        'Se establece los valores para cada parametro
        cmd.Parameters("@CO_numeroSolicitud").Value = BE.Co_numeroSolicitud
        cmd.Parameters("@Fe_fecha").Value = BE.Fe_fecha

        Try
            cnx.Open()
            If cmd.ExecuteNonQuery() > 0 Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Throw New Exception(ex.Message)
            Return False
        Finally
            cnx.Close()
        End Try
    End Function
End Class
