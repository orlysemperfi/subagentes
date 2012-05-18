Imports BussinesEntities
Imports DataAccessLayer
Public Class BL_Solicitud
    Dim CategoriaDAO As New CategoriaDAO
    Dim DA_Solicitud As New DA_Solicitud
    Shared Function Insert(ByVal BE As BE_Solicitud) As Boolean
        Return DA_Solicitud.Insert(BE)
    End Function
End Class
