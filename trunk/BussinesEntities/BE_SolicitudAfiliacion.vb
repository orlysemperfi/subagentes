Public Class BE_SolicitudAfiliacion
    Inherits BE_Solicitud

    Private _Co_numeroCartaFianza As String
    Public Property Co_numeroCartaFianza() As String
        Get
            Return _Co_numeroCartaFianza
        End Get
        Set(ByVal value As String)
            _Co_numeroCartaFianza = value
        End Set
    End Property

    Private _EvalFinanciero As BE_Persona
    Public Property EvalFinanciero() As BE_Persona
        Get
            Return _EvalFinanciero
        End Get
        Set(ByVal value As BE_Persona)
            _EvalFinanciero = value
        End Set
    End Property

    Private _Fe_fecEvalFinanciera As DateTime
    Public Property Fe_fecEvalFinanciera() As DateTime
        Get
            Return _Fe_fecEvalFinanciera
        End Get
        Set(ByVal value As DateTime)
            _Fe_fecEvalFinanciera = value
        End Set
    End Property

    Private _Tx_comentEvalFinanciera As String
    Public Property Tx_comentEvalFinanciera() As String
        Get
            Return _Tx_comentEvalFinanciera
        End Get
        Set(ByVal value As String)
            _Tx_comentEvalFinanciera = value
        End Set
    End Property

    Private _En_omisionTributaria As String
    Public Property En_omisionTributaria() As String
        Get
            Return _En_omisionTributaria
        End Get
        Set(ByVal value As String)
            _En_omisionTributaria = value
        End Set
    End Property

    Private _En_verificadoSunat As String
    Public Property En_verificadoSunat() As String
        Get
            Return _En_verificadoSunat
        End Get
        Set(ByVal value As String)
            _En_verificadoSunat = value
        End Set
    End Property

    Private _En_cartaFianzaValidada As String
    Public Property En_cartaFianzaValidada() As String
        Get
            Return _En_cartaFianzaValidada
        End Get
        Set(ByVal value As String)
            _En_cartaFianzaValidada = value
        End Set
    End Property

    Private _En_inscritaDirectorio As String
    Public Property En_inscritaDirectorio() As String
        Get
            Return _En_inscritaDirectorio
        End Get
        Set(ByVal value As String)
            _En_inscritaDirectorio = value
        End Set
    End Property


End Class
