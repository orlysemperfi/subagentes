Public Class BE_Usuario
    Private _No_login As String
    Public Property No_Login() As String
        Get
            Return _No_login
        End Get
        Set(ByVal value As String)
            _No_login = value
        End Set
    End Property

    Private _No_claveUsuario As String
    Public Property No_claveUsuario() As String
        Get
            Return _No_claveUsuario
        End Get
        Set(ByVal value As String)
            _No_claveUsuario = value
        End Set
    End Property

    Private _Fl_tipoUsuario As String
    Public Property Fl_tipoUsuario() As String
        Get
            Return _Fl_tipoUsuario
        End Get
        Set(ByVal value As String)
            _Fl_tipoUsuario = value
        End Set
    End Property
End Class
