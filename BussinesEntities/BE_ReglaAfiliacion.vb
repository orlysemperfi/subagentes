Public Class BE_ReglaAfiliacion

    Private _Nu_reglaAfiliacion As Integer
    Public Property Nu_reglaAfiliacion() As Integer
        Get
            Return _Nu_reglaAfiliacion
        End Get
        Set(ByVal value As Integer)
            _Nu_reglaAfiliacion = value
        End Set
    End Property

    Private _Qt_mesOperacion As Integer
    Public Property Qt_mesOperacion() As Integer
        Get
            Return _Qt_mesOperacion
        End Get
        Set(ByVal value As Integer)
            _Qt_mesOperacion = value
        End Set
    End Property

    Private _Qt_renovaDiasVencimiento As Integer
    Public Property Qt_renovaDiasVencimiento() As Integer
        Get
            Return _Qt_renovaDiasVencimiento
        End Get
        Set(ByVal value As Integer)
            _Qt_renovaDiasVencimiento = value
        End Set
    End Property

    Private _Fl_permiteAfiliacionCancelados As String
    Public Property Fl_permiteAfiliacionCancelados() As String
        Get
            Return _Fl_permiteAfiliacionCancelados
        End Get
        Set(ByVal value As String)
            _Fl_permiteAfiliacionCancelados = value
        End Set
    End Property

    Private _En_tipoCalificacionHasta As String
    Public Property En_tipoCalificacionHasta() As String
        Get
            Return _En_tipoCalificacionHasta
        End Get
        Set(ByVal value As String)
            _En_tipoCalificacionHasta = value
        End Set
    End Property

    Private _Fl_estadoRegla As String
    Public Property Fl_estadoRegla() As String
        Get
            Return _Fl_estadoRegla
        End Get
        Set(ByVal value As String)
            _Fl_estadoRegla = value
        End Set
    End Property


End Class
