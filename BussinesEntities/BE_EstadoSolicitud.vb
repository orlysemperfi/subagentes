Public Class BE_EstadoSolicitud

    Private _Nu_codEstadoSolic As Integer
    Public Property Nu_codEstadoSolic() As Integer
        Get
            Return _Nu_codEstadoSolic
        End Get
        Set(ByVal value As Integer)
            _Nu_codEstadoSolic = value
        End Set
    End Property

    Private _No_descEstado As String
    Public Property No_descEstado() As String
        Get
            Return _No_descEstado
        End Get
        Set(ByVal value As String)
            _No_descEstado = value
        End Set
    End Property

    Private _En_tipoEstado As String
    Public Property En_tipoEstado() As String
        Get
            Return _En_tipoEstado
        End Get
        Set(ByVal value As String)
            _En_tipoEstado = value
        End Set
    End Property

    Private _Fl_estado As String
    Public Property Fl_estado() As String
        Get
            Return _Fl_estado
        End Get
        Set(ByVal value As String)
            _Fl_estado = value
        End Set
    End Property


End Class
