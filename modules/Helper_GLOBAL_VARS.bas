Attribute VB_Name = "Helper_GLOBAL_VARS"
Public db As New db
Public activePartidaId As Double
Public PartidaStatus As Integer
Public stockout_status As Integer
Public newPartida As Boolean
Public itemID As Double
Public activedate As Label
Public activeform As Form
Public kilospersack As Double
Public totalkg As Double
Public profit As Double
Public partida_id_toevaluate As Double
Public partida_id_to_manage As Double
Public active_provider_id As String
Public activeUser As New Useraccount
Public active_edit_product_id As Double
Public item_editmode As Boolean
Public stockout_product_edit_mode As Boolean
Public activestockoutID As Double
Public stockin_product_edit_mode As Boolean
Public activestockinID As Double
Public editPartida_id As Double
Public edit_user_account As Boolean
Public activeEditUsername As String
Public evaluatepartida As New Partida
'

Public Sub get_item_id(desc As String)
Dim rs As New ADODB.Recordset
Dim id_of_item As Double
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
capital = Val(frmPartidaView.lsvStockInTotal.SelectedItem.SubItems(5)) + Val(frmPartidaView.lsvTotalExpenses.SelectedItem.SubItems(5))
gross = Val(frmPartidaView.lsvStockOutTotal.SelectedItem.SubItems(5))
lbl = gross - capital
End Sub


