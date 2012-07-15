Attribute VB_Name = "Helper_Stockout"
Sub loadStockOutListOnThisPartida(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_partida_stock_out_list & " WHERE ps.partida_id = " & partida_id
    
    attributes.Add "description"
    attributes.Add "qty_out"
    attributes.Add "price"
    attributes.Add "total_amount"
    attributes.Add "date_out"
    
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub

Sub loadStockOutTotals(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem
If partida_id <> 0 Then
    sql = view_partida_stock_out_totals & " WHERE ps.partida_id = " & partida_id
    Set rs = db.execute(sql)
    On Error Resume Next
         lsv.ListItems.Clear
        If rs.RecordCount > 0 Then
            Do Until rs.EOF
                Set list = lsv.ListItems.Add(, , "")
                list.SubItems(1) = "TOTALS"
                list.SubItems(2) = rs.Fields("total_out").Value
                list.SubItems(4) = rs.Fields("total_amount").Value
                totalgrossholder = list.SubItems(4)
            rs.MoveNext
            Loop
        End If
End If
End Sub


Public Sub get_percentage(lbl As Label)
Dim percent As String
kilospersack = Val(frmPartidaView.lsvStockOutTotal.SelectedItem.SubItems(2)) * no_of_kilospersack
totalkg = Val(frmPartidaView.lsvStockInTotal.SelectedItem.SubItems(2))
If totalkg = 0 Then
lbl = "Current out percentage: 0%"
Else
percent = "Current out Percentage: " & (kilospersack / totalkg) * 100 & "%"
lbl = percent
End If
End Sub


