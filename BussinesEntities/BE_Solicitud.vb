Public Class BE_Solicitud
    Private _Co_numeroSolicitud As String
    Public Property Co_numeroSolicitud() As String
        Get
            Return _Co_numeroSolicitud
        End Get
        Set(ByVal value As String)
            _Co_numeroSolicitud = value
        End Set
    End Property

    Private _Fe_fecha As String
    Public Property Fe_fecha() As String
        Get
            Return _Fe_fecha
        End Get
        Set(ByVal value As String)
            _Fe_fecha = value
        End Set
    End Property
    Private _Subagente As BE_Subagente
    Public Property Subagente() As BE_Subagente
        Get
            Return _Subagente
        End Get
        Set(ByVal value As BE_Subagente)
            _Subagente = value
        End Set
    End Property


    Private _Nu_numSolicitud As Integer
    Public Property Nu_numSolicitud() As Integer
        Get
            Return _Nu_numSolicitud
        End Get
        Set(ByVal value As Integer)
            _Nu_numSolicitud = value
        End Set
    End Property


    Private _Fe_fecSolicitud As DateTime
    Public Property Fe_fecSolicitud() As DateTime
        Get
            Return _Fe_fecSolicitud
        End Get
        Set(ByVal value As DateTime)
            _Fe_fecSolicitud = value
        End Set
    End Property

    Private _usrSolicitante As BE_Persona
    Public Property usrSolicitante() As BE_Persona
        Get
            Return _usrSolicitante
        End Get
        Set(ByVal value As BE_Persona)
            _usrSolicitante = value
        End Set
    End Property
    Private _Tx_comentSolicitante As String
    Public Property Tx_comentSolicitante() As String
        Get
            Return _Tx_comentSolicitante
        End Get
        Set(ByVal value As String)
            _Tx_comentSolicitante = value
        End Set
    End Property

    Private _EvalComercial As BE_Persona
    Public Property EvalComercial() As BE_Persona
        Get
            Return _EvalComercial
        End Get
        Set(ByVal value As BE_Persona)
            _EvalComercial = value
        End Set
    End Property

    Private _Fe_fecEvalComercial As DateTime
    Public Property Fe_fecEvalComercial() As DateTime
        Get
            Return _Fe_fecEvalComercial
        End Get
        Set(ByVal value As DateTime)
            _Fe_fecEvalComercial = value
        End Set
    End Property

    Private _Tx_comentEvalComercial As String
    Public Property Tx_comentEvalComercial() As String
        Get
            Return _Tx_comentEvalComercial
        End Get
        Set(ByVal value As String)
            _Tx_comentEvalComercial = value
        End Set
    End Property

    Private _RepresentanteLegal As BE_Persona
    Public Property RepresentanteLegal() As BE_Persona
        Get
            Return _RepresentanteLegal
        End Get
        Set(ByVal value As BE_Persona)
            _RepresentanteLegal = value
        End Set
    End Property

    Private _Fe_fecRevisionRepLegal As DateTime
    Public Property Fe_fecRevisionRepLegal() As DateTime
        Get
            Return _Fe_fecRevisionRepLegal
        End Get
        Set(ByVal value As DateTime)
            _Fe_fecRevisionRepLegal = value
        End Set
    End Property
    'cambiar
    Private _Tx_comentRepresentanteLegal As String
    Public Property Tx_comentRepresentanteLegal() As String
        Get
            Return _Tx_comentRepresentanteLegal
        End Get
        Set(ByVal value As String)
            _Tx_comentRepresentanteLegal = value
        End Set
    End Property

    Private _AsistenteLegal As BE_Persona
    Public Property AsistenteLegal() As BE_Persona
        Get
            Return _AsistenteLegal
        End Get
        Set(ByVal value As BE_Persona)
            _AsistenteLegal = value
        End Set
    End Property

    Private _fecRevisionAsistLegal As DateTime
    Public Property fecRevisionAsistLegal() As DateTime
        Get
            Return _fecRevisionAsistLegal
        End Get
        Set(ByVal value As DateTime)
            _fecRevisionAsistLegal = value
        End Set
    End Property

    Private _Tx_comentAsistLegal As String
    Public Property Tx_comentAsistLegal() As String
        Get
            Return _Tx_comentAsistLegal
        End Get
        Set(ByVal value As String)
            _Tx_comentAsistLegal = value
        End Set
    End Property

    Private _En_calificacionCrediticia As String
    Public Property En_calificacionCrediticia() As String
        Get
            Return _En_calificacionCrediticia
        End Get
        Set(ByVal value As String)
            _En_calificacionCrediticia = value
        End Set
    End Property

    Private _MotivoRechazo As BE_MotivoRechazo
    Public Property MotivoRechazo() As BE_MotivoRechazo
        Get
            Return _MotivoRechazo
        End Get
        Set(ByVal value As BE_MotivoRechazo)
            _MotivoRechazo = value
        End Set
    End Property

    Private _ReglaAfiliacion As BE_ReglaAfiliacion
    Public Property ReglaAfiliacion() As BE_ReglaAfiliacion
        Get
            Return _ReglaAfiliacion
        End Get
        Set(ByVal value As BE_ReglaAfiliacion)
            _ReglaAfiliacion = value
        End Set
    End Property

    Private _EstadoSolicitud As BE_EstadoSolicitud
    Public Property EstadoSolicitud() As BE_EstadoSolicitud
        Get
            Return _EstadoSolicitud
        End Get
        Set(ByVal value As BE_EstadoSolicitud)
            _EstadoSolicitud = value
        End Set
    End Property







End Class
