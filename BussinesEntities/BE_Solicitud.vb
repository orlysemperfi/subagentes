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
End Class
