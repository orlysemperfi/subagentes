Public Class BE_TipoDocumento

    Private _Nu_codTipoDoc As Integer
    Public Property Nu_codTipoDoc() As Integer
        Get
            Return _Nu_codTipoDoc
        End Get
        Set(ByVal value As Integer)
            _Nu_codTipoDoc = value
        End Set
    End Property

    Private _No_descTipoDoc As String
    Public Property No_descTipoDoc() As String
        Get
            Return _No_descTipoDoc
        End Get
        Set(ByVal value As String)
            _No_descTipoDoc = value
        End Set
    End Property

    Private _Fl_estadoTipoDoc As String
    Public Property Fl_estadoTipoDoc() As String
        Get
            Return _Fl_estadoTipoDoc
        End Get
        Set(ByVal value As String)
            _Fl_estadoTipoDoc = value
        End Set
    End Property

End Class
