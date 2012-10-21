Attribute VB_Name = "Helper_Partida"
Sub loadPartidaList(lsv As ListView)
Dim col As New Collection
Dim sql As String

sql = "SELECT * FROM partida"

col.Add "*"
Call populateResultOnThisListView(sql, lsv, col)

End Sub


Sub loadPartidaListinSettings(sql As String, lsv As ListView)
Dim coll As New Collection
coll.Add "*"
Call populateResultOnThisListView(sql, lsv, coll)
End Sub


Sub swithch_partidaload(lsv As ListView, pswitch As Boolean)
Dim sql As String
If pswitch = False Then
    sql = "select * from partida where status = 1"
Else
    sql = "select * from partida where status=0"
End If
    Call loadPartidaListinSettings(sql, lsv)
End Sub

Sub statuschanger(partida_id As Integer, selected As Boolean, pswitch As Boolean)
Dim sql As String
If selected = True And pswitch = True Or selected = False And pswitch = False Then
    sql = "update partida set status=1 where id='" & partida_id & "'"
ElseIf selected = False And pswitch = True Or selected = True And pswitch = False Then
    sql = "update partida set status=0 where id='" & partida_id & "'"

End If
    db.execute (sql)
End Sub

Sub closepartida(partida_id As Double, status As Integer)

    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim confirm As Byte
    '1 open
    '0 close
    
    If status = 1 Then
        confirm = MsgBox("Are you sure you want to close partida Stock in?", vbQuestion + vbYesNo)
        If confirm = vbYes Then
            sql = "update partida set status=0 where id='" & partida_id & "'"
            Set rs = db.execute(sql)
            MsgBox ("successfully close partida"), vbInformation, "Close partida"
        End If
    Else
        MsgBox ("Partida Already Closed!"), vbInformation, "Close Partida"
    End If
End Sub

Sub closepartidaStockout(partida_id As Double, stockout_status As Integer)

    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim confirm As Byte
'0 open
'1 close
    
    If stockout_status = 1 Then
        confirm = MsgBox("Are you sure you want to close partida Stock out?", vbQuestion + vbYesNo)
        If confirm = vbYes Then
            sql = "update partida set stockout_status=0 where id='" & partida_id & "'"
            Set rs = db.execute(sql)
            MsgBox ("successfully close partida Stock out"), vbInformation, "Close partida"
        End If
    Else
        MsgBox ("Partida Already Closed!"), vbInformation, "Close Partida"
    End If
End Sub

Public Sub savePartida()
If newPartida Then
    Dim new_partida As New Partida
        With new_partida
            .partida_name = frmPartidaView.txtPartidaname.Text
            .partida_status = 1
            .stockout_status = 0
            .created_at = Format(Date, "yyyy-mm-dd")
            .created_by = activeUser.username
            .save
        End With
        MsgBox "Successfully saved!", vbInformation, "save"
        Call loadPartidaList(frmManagePartida.lsvPartida)
        newPartida = False
        activePartidaId = getlastId
        'Unload Me
End If
Call enable_partida_open(frmManagePartida.lsvPartida, frmManagePartida.cmdOpen)
End Sub


Public Sub getlastpartida_id(set_activePartidaId As Double)
Dim getlastId As Integer
getlastId = Val(db.execute("SELECT last_insert_id()").Fields(0).Value)
set_activePartidaId = getlastId
End Sub

Function editstockoutproduct(stockout_id As Double)
Dim editstckout As New StockOut
    With editstckout
        .load_stockout (stockout_id)
        frmStockOut.lblDate.Caption = .date_out
        frmStockOut.txtitem.Text = getItemcode(.item_id)
        frmStockOut.txtPrice.Text = .unit_price
        frmStockOut.txtQty.Text = .qty_out
        frmStockOut.txtAmount.Text = .total_amount
    End With
        frmStockOut.Show 1
End Function

Function editstockinProduct(stockin_id As Double)
Dim editstockin As New StockIn
     With editstockin
        .load_stockin (stockin_id)
        frmStockIn.lblDate.Caption = .date_in
'        frmStockIn.txtItem.Text = getItemcode(.item_id)
        frmStockIn.txtAmount.Text = .total_amount
        frmStockIn.txtdescription.Text = .description
        frmStockIn.txtNum_of_sack.Text = .Num_of_sack
        frmStockIn.txtPrice.Text = .unit_price
        frmStockIn.txtProvider.Text = getprovider(.id)
        frmStockIn.txtQty.Text = .qty_in
     End With
        frmStockIn.Show 1
End Function

Function getItemcode(item_id As Double) As String
    Dim sql As String
    Dim tempitem As New item
        tempitem.load_item (item_id)
    getItemcode = tempitem.item_code
End Function

Function getprovider(item_id As Double) As String
    Dim sql As String
    Dim tempprovider_id As Double
    Dim rs As New ADODB.Recordset
    Dim tempprovider As New provider
    
    sql = "SELECT * FROM `stockin_provider` WHERE stockin_id=" & item_id & ""
    Set rs = db.execute(sql)
    tempprovider_id = rs.Fields("provider_id").Value
    
    tempprovider.loadProvider (tempprovider_id)
    
    getprovider = tempprovider.provider_name
    
    Set rs = Nothing
End Function
