Imports BussinesLogicLayer
Imports BussinesEntities
Partial Class ConsultaAfiliacion
    Inherits System.Web.UI.Page
    Protected Sub btnNuevo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNuevo.Click
        Response.Redirect("RegistroAfiliacion.aspx", True)
    End Sub
    Protected Sub btnBuscar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBuscar.Click

        Dim strFecRegIni As String = txtFecRegIni.Text.ToString
        Dim strFecRegFin As String = txtFecRegFin.Text.ToString
        Dim strFecAteIni As String = txtFecAteIni.Text.ToString
        Dim strFecAteFin As String = txtFecAteFin.Text.ToString

        If strFecRegIni = "" Or strFecRegFin = "" Then
            strFecRegIni = "01/01/1900"
            strFecRegFin = "01/01/2200"
        End If
        If strFecAteIni = "" Or strFecAteFin = "" Then
            strFecAteIni = "01/01/1900"
            strFecAteFin = "01/01/2200"
        End If

        GridView1.DataSource = BL_Solicitud.Buscar(strFecRegIni, strFecRegFin, _
                                               strFecAteIni, strFecAteFin, lstEstado.SelectedValue)
        'GridView1.DataSource = BL_Solicitud.Buscar("01/01/2012", "01/01/2012", "01/01/2012", "01/01/2012", 3)
        GridView1.DataBind()

    End Sub
    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        Dim intSituacion As Integer
        Dim intSolicitud As Integer
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            intSituacion = DataBinder.Eval(e.Row.DataItem, "situacion")
            intSolicitud = DataBinder.Eval(e.Row.DataItem, "numero")
            e.Row.Cells(6).Attributes.Add("style", "CURSOR: hand")
            e.Row.Cells(7).Attributes.Add("style", "CURSOR: hand")
            e.Row.Cells(8).Attributes.Add("style", "CURSOR: hand")
            If intSituacion = 1 Then
                e.Row.Cells(6).Attributes.Add("onclick", "return Actualizar(" & Chr(34) & intSolicitud.ToString & Chr(34) & ");")
                e.Row.Cells(7).Attributes.Add("onclick", "return Eliminar(" & Chr(34) & intSolicitud.ToString & Chr(34) & ");")
                e.Row.Cells(8).Attributes.Add("onclick", "return Mensaje();")
            ElseIf intSituacion = 2 Then
                e.Row.Cells(6).Attributes.Add("onclick", "return Mensaje();")
                e.Row.Cells(7).Attributes.Add("onclick", "return Mensaje();")
                e.Row.Cells(8).Attributes.Add("onclick", "return Revisar(" & Chr(34) & intSolicitud.ToString & Chr(34) & ");")
            Else
                e.Row.Cells(6).Attributes.Add("onclick", "return Mensaje();")
                e.Row.Cells(7).Attributes.Add("onclick", "return Mensaje();")
                e.Row.Cells(8).Attributes.Add("onclick", "return Mensaje();")
            End If
        End If
    End Sub

    Protected Sub FrmConsultaSolicitud_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles FrmConsultaSolicitud.Load
        Dim objList As New ListItem
        Dim blnRpta As Boolean

        If Not Page.IsPostBack Then

            objList.Text = "TODOS"
            objList.Value = 0
            lstEstado.Items.Add(objList)
            lstEstado.DataSource = BL_Estado.getEstados(1)
            lstEstado.DataTextField = "No_descEstado"
            lstEstado.DataValueField = "Nu_codEstadoSolic"
            lstEstado.DataBind()
            lstEstado.Items.Add(objList)
            lstEstado.SelectedValue = 0
            Exit Sub
        End If

        If Me.txtAction.Value = "ELIMINAR" Then
            blnRpta = BL_Solicitud.Delete(CInt(intSolicitud.Value))
        End If
    End Sub
End Class
