Attribute VB_Name = "Helper_UserPreviliges"
Sub grantAdminPreviligesToActiveUser()
   ' Call activeUser.previliges.clearPreviliges
    'activeUser.previliges.grantAll
End Sub
Sub grantUserPreviliges(active_username As String)
   Dim rs As New ADODB.Recordset
   Dim sql As String
   sql = "SELECT up.*,p.previleges as previleges_description FROM user_previleges up INNER JOIN previleges p ON up.previleges = p.id WHERE up.username = '" & active_username & "'"
   Set rs = db.execute(sql)
   If rs.RecordCount > 0 Then
    Do Until rs.EOF
       Call setPrevileges(rs.Fields("previleges_description").Value, rs.Fields("status").Value)
    rs.MoveNext
    Loop
   End If
End Sub
Sub setPrevileges(previleges, action As Boolean)
    Select Case previleges
        Case "can_create_partida":
            activeUser.previliges.canCreatePartida = action
        Case "can_stockin":
            activeUser.previliges.canStockIn = action
        Case "can_stockout":
            activeUser.previliges.canStockOut = action
        Case "can_close_partida":
            activeUser.previliges.canClosePartida = action
        Case "can_close_partida_stockout":
            activeUser.previliges.canClosePartidaStockout = action
        Case "can_edit_delete_partida_prod":
            activeUser.previliges.canEditDeletePartidaProd = action
        Case "can_open_close_partida":
            activeUser.previliges.canOpenClosePartida = action
        Case "can_evaluate_partida":
            activeUser.previliges.canEvaluatePartida = action
        Case "can_manage_user_account":
            activeUser.previliges.canCreateUserAccount = action
        Case "can_send_partida_to_archive":
            activeUser.previliges.canSendPartidaToArchive = action
    End Select
End Sub

Sub renderButtonBasedOnUserPreviliges()
    With activeUser.previliges
        MDIForm1.mnuPartidavisibility.Enabled = .canOpenClosePartida
        MDIForm1.mnuEvaluatepartida.Enabled = .canEvaluatePartida
        MDIForm1.mnumanageuseraccount.Enabled = .canCreateUserAccount
       frmManagePartida.cmdCreate.Enabled = .canCreatePartida
       frmManagePartida.mnusend_to_archived.Enabled = .canSendPartidaToArchive
       'toolbar menu
    End With
End Sub

Sub renderButtonBasedOnUserPreviligesInPartidaView()
    With activeUser.previliges
'       frmPartidaView.cmdAddStockIn.Enabled = .canStockIn
'       frmPartidaView.cmdAddStockOut.Enabled = .canStockOut
       frmPartidaView.cmdClosepartida.Enabled = .canClosePartida
       frmPartidaView.cmdClosePartidaStockout.Enabled = .canClosePartidaStockout
       frmPartidaView.mnuEdit.Enabled = .canEditDeletePartidaProd
       frmPartidaView.mnuDelete.Enabled = .canEditDeletePartidaProd
    End With
End Sub




