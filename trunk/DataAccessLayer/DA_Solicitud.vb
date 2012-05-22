Imports BussinesEntities
Imports System.Data.SqlClient

Public Class DA_Solicitud
    Dim ConexionDAO As New ConexionDAO
	Shared Function Buscar(ByVal strFecRegIni As String, ByVal strFecRegFin As String, _
                             ByVal strFecAteIni As String, ByVal strFecAteFin As String, _
                             ByVal strEstado As Integer) As DataSet

        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim sqlAdp As New SqlDataAdapter
        Dim cmd As New SqlCommand
        Dim ds As New DataSet

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SP_SOLICITUD_BUSCAR"

        'Se crea el objeto Parameters por cada parametro
        cmd.Parameters.Add(New SqlClient.SqlParameter("@FechaRegIni", SqlDbType.DateTime, 8))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@FechaRegFin", SqlDbType.DateTime, 8))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@FechaAteIni", SqlDbType.DateTime, 8))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@FechaAteFin", SqlDbType.DateTime, 8))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Estado", SqlDbType.SmallInt, 2))

        'Se establece los valores para cada parametro
        cmd.Parameters("@FechaRegIni").Value = strFecRegIni
        cmd.Parameters("@FechaRegFin").Value = strFecRegFin
        cmd.Parameters("@FechaAteIni").Value = strFecAteIni
        cmd.Parameters("@FechaAteFin").Value = strFecAteFin
        cmd.Parameters("@Estado").Value = strEstado

        Try
            cnx.Open()
            sqlAdp.SelectCommand = cmd
            sqlAdp.Fill(ds)
            Return ds
        Catch ex As Exception
            Throw New Exception(ex.Message)
        Finally
            cnx.Close()
        End Try
    End Function
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
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_nomComercial", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_razonSocial", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Fk_tipoDocumento", SqlDbType.VarChar, 30))
        'cmd.Parameters.Add(New SqlClient.SqlParameter("@No_numDocumento", SqlDbType.VarChar, 30))
        'cmd.Parameters.Add(New SqlClient.SqlParameter("@TerritorioSolicitante", SqlDbType.VarChar, 30))
        'cmd.Parameters.Add(New SqlClient.SqlParameter("@DireccionSolicitante", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_codigoPostal", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_webSite", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_telefRepresentante", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Fe_fecInicioOperaciones", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_nomRepresentante", SqlDbType.VarChar, 30))
        'cmd.Parameters.Add(New SqlClient.SqlParameter("@TipoDocRepresentante", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_numDocRepresentante", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_telefRepresentante", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@En_cartaFianzaValidada", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@No_numeroCertificadoIata", SqlDbType.VarChar, 30))
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Tx_comentEvalFinanciera", SqlDbType.VarChar, 30))

        'Se establece los valores para cada parametro
        ''Se establece los valores para cada parametro
        'cmd.Parameters("@No_nomComercial").Value = BE.No_nomComercial
        'cmd.Parameters("@No_razonSocial").Value = BE.No_razonSocial
        'cmd.Parameters("@Fk_tipoDocumento(").Value = BE.Fk_tipoDocumento
        ''cmd.Parameters("@No_numDocumento").Value = BE.
        ''cmd.Parameters("@TerritorioSolicitante").Value = BE.
        ''cmd.Parameters("@DireccionSolicitante").Value = BE.
        'cmd.Parameters("@No_codigoPostal").Value = BE.No_codigoPostal
        'cmd.Parameters("@No_webSite").Value = BE.No_webSite
        'cmd.Parameters("@No_telefRepresentante").Value = BE.No_telefRepresentante
        'cmd.Parameters("@Fe_fecInicioOperaciones").Value = BE.Fe_fecInicioOperaciones
        'cmd.Parameters("@No_nomRepresentante").Value = BE.No_nomRepresentante
        ''cmd.Parameters("@TipoDocRepresentante").Value = BE.
        'cmd.Parameters("@No_numDocRepresentante").Value = BE.No_numDocRepresentante
        'cmd.Parameters("@En_cartaFianzaValidada").Value = BE.En_cartaFianzaValidada
        ''cmd.Parameters("@No_numeroCertificadoIata").Value = BE.
        'cmd.Parameters("@Tx_comentEvalFinanciera").Value = BE.Tx_comentEvalFinanciera


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
    Shared Function getSolicitudes() As DataTable
        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim cmd As New SqlCommand
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "VT_CATEGORIA_GET0XXX"

        'Se configura el Adaptador
        da.SelectCommand = cmd
        da.Fill(ds, "Solicitudes")

        Try
            cnx.Open()
            Return ds.Tables(0)
            cnx.Close()
        Catch ex As Exception
            Throw New Exception(ex.Message)
        End Try

    End Function
	Shared Function Delete(ByVal IdSolicitud As Integer) As Boolean
        Dim cnx As New SqlConnection(ConexionDAO.GetCnx)
        Dim cmd As New SqlCommand

        'Se configura el comando
        cmd.Connection = cnx
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SP_ELIMINA_SOLICITUD"

        'Se crea el objeto Parameters por cada parametro
        cmd.Parameters.Add(New SqlClient.SqlParameter("@Solicitud", SqlDbType.Int, 4))

        'Se establece los valores para cada parametro
        cmd.Parameters("@Solicitud").Value = IdSolicitud

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
