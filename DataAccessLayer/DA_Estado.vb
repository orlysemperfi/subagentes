Imports BussinesEntities
Imports System.Data.SqlClient

Public Class DA_Estado
    Dim ConexionDAO As New ConexionDAO
    Shared Function getEstados(ByVal intTipo As Integer) As DataTable

        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim sqlAdp As New SqlDataAdapter
        Dim cmd As New SqlCommand
        Dim ds As New DataSet

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "select e.Nu_codEstadoSolic, e.No_descEstado from TB_EstadoSolicitud e where	e.En_tipoEstado = " & intTipo

        Try
            cnx.Open()
            sqlAdp.SelectCommand = cmd
            sqlAdp.Fill(ds)
            Return ds.Tables(0)
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cnx.Close()
        End Try
    End Function
End Class
