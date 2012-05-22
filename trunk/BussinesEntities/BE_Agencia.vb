Public Class BE_Agencia
    Private _Nu_codAgencia As String
    Public Property Nu_codAgencia() As String
        Get
            Return _Nu_codAgencia
        End Get
        Set(ByVal value As String)
            _Nu_codAgencia = value
        End Set
    End Property

    Private _No_descAegencia As String
    Public Property No_descAegencia() As String
        Get
            Return _No_descAegencia
        End Get
        Set(ByVal value As String)
            _No_descAegencia = value
        End Set
    End Property
    Private _No_direccion As String

    Public Property No_direccion() As String
        Get
            Return _No_direccion
        End Get
        Set(ByVal value As String)
            _No_direccion = value
        End Set
    End Property

    Private _No_telefono As String
    Public Property No_telefono() As String
        Get
            Return _No_telefono
        End Get
        Set(ByVal value As String)
            _No_telefono = value
        End Set
    End Property

    Private _No_codigoPostal As String
    Public Property No_codigoPostal() As String
        Get
            Return _No_codigoPostal
        End Get
        Set(ByVal value As String)
            _No_codigoPostal = value
        End Set
    End Property

    Private _Fl_primaria As String
    Public Property Fl_primaria() As String
        Get
            Return _Fl_primaria
        End Get
        Set(ByVal value As String)
            _Fl_primaria = value
        End Set
    End Property

    Private _Fl_estadoAgencia As String
    Public Property Fl_estadoAgencia() As String
        Get
            Return _Fl_estadoAgencia
        End Get
        Set(ByVal value As String)
            _Fl_estadoAgencia = value
        End Set
    End Property




End Class
