Attribute VB_Name = "Helper_Stockin"
Sub loadStockinListOnThisPartida(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim attributes As New Collection

sql = view_partida_stock_in_list & " WHERE ps.partida_id = " & partida_id

attributes.Add "item_name"
attributes.Add "qty_in"
attributes.Add "price"
attributes.Add "total_amount"
attributes.Add "date_in"

Call populateResultOnThisListView(sql, lsv, attributes)

End Sub

Sub loadStockInTotals(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem

sql = view_partida_stock_in_totals & " WHERE ps.partida_id = " & partida_id
Set rs = db.execute(sql)
lsv.ListItems.Clear
If rs.RecordCount > 0 Then
    Do Until rs.EOF
        Set list = lsv.ListItems.Add(, , "")
        list.SubItems(1) = "TOTALS"
        list.SubItems(2) = rs.Fields("total_in").Value
        list.SubItems(4) = rs.Fields("total_amount").Value
    rs.MoveNext
    Loop
End If

End Sub
