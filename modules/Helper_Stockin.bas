Attribute VB_Name = "Helper_Stockin"
Sub loadStockinListOnThisPartida(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_partida_stock_in_list & " WHERE ps.partida_id = " & partida_id
    attributes.Add "description"
    attributes.Add "qty_in"
    attributes.Add "price"
    attributes.Add "total_amount"
    attributes.Add "date_in"
    
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub

Sub loadStockInTotals(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem
If partida_id <> 0 Then
    sql = view_partida_stock_in_totals & " WHERE ps.partida_id = " & partida_id
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    On Error Resume Next
    If rs.RecordCount > 0 Then
        Do Until rs.EOF
            Set list = lsv.ListItems.Add(, , "")
            list.SubItems(1) = "TOTALS"
            list.SubItems(2) = rs.Fields("total_in").Value
            list.SubItems(4) = rs.Fields("total_amount").Value
            totalcapitalholder = list.SubItems(4)
        rs.MoveNext
        Loop
    End If
End If
End Sub

Public Sub get_total_amount(qty As TextBox, price As TextBox, total As TextBox)
Dim total_amount As Double
If qty.Text = "" Or price.Text = "" Then
total_amount = 0
Else
   total_amount = Val(qty.Text) * Val(price.Text)
   total = total_amount
End If
End Sub


Sub PrintStockIn(partida_id As Integer, partida_name As String)
Dim sql As String
 sql = view_partida_stock_in_list & " WHERE ps.partida_id = " & partida_id
    
End Sub
