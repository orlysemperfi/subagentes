Imports BussinesEntities
Imports DataAccessLayer

Public Class BL_Usuario

    Dim DA_Usuario As New DA_Usuario

    Shared Function GetUsuario(ByVal strNoLogin As String, ByVal strNoclaveUsuario As String) As BE_Usuario
        Return DA_Usuario.GetUsuario(strNoLogin, strNoclaveUsuario)
    End Function

End Class
