Public Class BE_Persona

    Private _Nu_codPersona As Integer
    Public Property Nu_codPersona() As Integer
        Get
            Return _Nu_codPersona
        End Get
        Set(ByVal value As Integer)
            _Nu_codPersona = value
        End Set
    End Property

    Private _Fl_tipoPersona As String
    Public Property Fl_tipoPersona() As String
        Get
            Return _Fl_tipoPersona
        End Get
        Set(ByVal value As String)
            _Fl_tipoPersona = value
        End Set
    End Property

    Private _No_nombre As String
    Public Property No_nombre() As String
        Get
            Return _No_nombre
        End Get
        Set(ByVal value As String)
            _No_nombre = value
        End Set
    End Property

    Private _No_apePaterno As String
    Public Property No_apePaterno() As String
        Get
            Return _No_apePaterno
        End Get
        Set(ByVal value As String)
            _No_apePaterno = value
        End Set
    End Property

    Private _No_apeMaterno As String
    Public Property No_apeMaterno() As String
        Get
            Return _No_apeMaterno
        End Get
        Set(ByVal value As String)
            _No_apeMaterno = value
        End Set
    End Property

    Private _Nu_numDocPersona As String
    Public Property Nu_numDocPersona() As String
        Get
            Return _Nu_numDocPersona
        End Get
        Set(ByVal value As String)
            _Nu_numDocPersona = value
        End Set
    End Property

    Private _En_estadoCivil As String
    Public Property En_estadoCivil() As String
        Get
            Return _En_estadoCivil
        End Get
        Set(ByVal value As String)
            _En_estadoCivil = value
        End Set
    End Property

    Private _Fe_fecCreaPersona As Date
    Public Property Fe_fecCreaPersona() As Date
        Get
            Return _Fe_fecCreaPersona
        End Get
        Set(ByVal value As Date)
            _Fe_fecCreaPersona = value
        End Set
    End Property

    Private _Fl_estadoUsuario As String
    Public Property Fl_estadoUsuario() As String
        Get
            Return _Fl_estadoUsuario
        End Get
        Set(ByVal value As String)
            _Fl_estadoUsuario = value
        End Set
    End Property




End Class
