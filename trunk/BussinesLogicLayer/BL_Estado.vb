Imports BussinesEntities
Imports DataAccessLayer
Public Class BL_Estado
    Dim DA_Estado As New DA_Estado
    Shared Function getEstados(ByVal intTipo As Integer) As DataTable
        Return DA_Estado.getEstados(intTipo)
    End Function
End Class
