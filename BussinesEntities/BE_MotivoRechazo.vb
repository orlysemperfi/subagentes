Public Class BE_MotivoRechazo

    Private _Nu_codMotivoRechazo As Integer
    Public Property Nu_codMotivoRechazo() As Integer
        Get
            Return _Nu_codMotivoRechazo
        End Get
        Set(ByVal value As Integer)
            _Nu_codMotivoRechazo = value
        End Set
    End Property

    Private _No_descCorta As String
    Public Property No_descCorta() As String
        Get
            Return _No_descCorta
        End Get
        Set(ByVal value As String)
            _No_descCorta = value
        End Set
    End Property

    Private _No_descLarga As String
    Public Property No_descLarga() As String
        Get
            Return _No_descLarga
        End Get
        Set(ByVal value As String)
            _No_descLarga = value
        End Set
    End Property

    Private _En_tipoMotivo As String
    Public Property En_tipoMotivo() As String
        Get
            Return _En_tipoMotivo
        End Get
        Set(ByVal value As String)
            _En_tipoMotivo = value
        End Set
    End Property

    Private _Fl_estadoMotivo As String
    Public Property Fl_estadoMotivo() As String
        Get
            Return _Fl_estadoMotivo
        End Get
        Set(ByVal value As String)
            _Fl_estadoMotivo = value
        End Set
    End Property



End Class
