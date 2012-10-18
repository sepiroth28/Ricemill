Attribute VB_Name = "Helper_GLOBAL_VARS"
Public db As New db
Public activePartidaId As Integer
Public PartidaStatus As Integer
Public stockout_status As Integer
Public newPartida As Boolean
Public itemID As Integer
Public activedate As Label
Public activeform As Form
Public kilospersack As Double
Public totalkg As Double
Public profit As Double
Public partida_id_toevaluate As Integer
Public partida_id_to_manage As Integer
Public active_provider_id As String
Public activeUser As New Useraccount
'



Public Sub get_item_id(desc As String)
Dim rs As New ADODB.Recordset
Dim id_of_item As Integer
Dim sql As String
sql = "select * from items where item_code ='" & desc & "'"
Set rs = db.execute(sql)
itemID = rs.Fields(0).Value
End Sub


Public Sub enable_partida_open(lsv As ListView, cmd As CommandButton)
If lsv.ListItems.count < 1 Then
cmd.Enabled = False
Else
cmd.Enabled = True
End If
End Sub


Public Sub view_profit(lbl As Label)
Dim capital As Double
Dim gross As Double
capital = Val(frmPartidaView.lsvStockInTotal.SelectedItem.SubItems(5)) + Val(frmPartidaView.lsvtotalExpenses.SelectedItem.SubItems(5))
gross = Val(frmPartidaView.lsvStockOutTotal.SelectedItem.SubItems(5))
lbl = gross - capital
End Sub


