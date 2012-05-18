Imports System.Configuration

Public Class ConexionDAO

    Shared Function GetCnx() As String
        Dim strCnx As String

        Try
            strCnx = _
            ConfigurationManager.ConnectionStrings("MiConexion").ConnectionString
        Catch ex As Exception
            Throw New Exception(ex.Message)
        End Try

        Return strCnx
    End Function
End Class
