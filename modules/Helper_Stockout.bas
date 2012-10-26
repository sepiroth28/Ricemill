Attribute VB_Name = "Helper_Stockout"
Dim item_in_listview As New Collection
Dim id_of_output_product As Double

Sub loadStockOutListOnThisPartida(partida_id As Double, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_partida_stock_out_list & " WHERE ps.partida_id = " & partida_id
    
    attributes.Add "stockout_id"
    attributes.Add "description"
    attributes.Add "qty_out"
    attributes.Add "price"
    attributes.Add "total_amount"
    attributes.Add "date_out"
    
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub

Sub loadStockOutTotals(partida_id As Double, lsv As ListView)
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
                list.SubItems(4) = "Php." & FormatNumber(rs.Fields("total_amount").Value, 2)
                totalgrossholder = list.SubItems(4)
            rs.MoveNext
            Loop
        End If
End If
End Sub


Public Sub get_percentage(lbl As Label)
Dim percent As Integer
On Error Resume Next
kilospersack = Val(frmPartidaView.lsvStockOutTotal.SelectedItem.SubItems(2)) * no_of_kilospersack
totalkg = Val(frmPartidaView.lsvStockInTotal.SelectedItem.SubItems(2))
If totalkg = 0 Then
lbl = "Current out percentage: 0%"
Else
percent = (kilospersack / totalkg) * 100
lbl = "Current out Percentage: " & percent & "%"
End If
End Sub

Sub get_output_product_percentage(lsv As ListView, partida_id As Double)
    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim lst As ListItem
       sql = "SELECT * FROM `associated_products` ap inner join `partida_raw_item` pi on " & _
            "ap.raw_product_id=pi.raw_item_id inner join `items` i on ap.output_product_id=i.id " & _
            "where pi.partida_id=" & partida_id & " and i.include_in_evaluation=1"
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    Set item_in_listview = New Collection
    If rs.RecordCount Then
    
        Do Until rs.EOF
            id_of_output_product = rs.Fields("id")
            Call getNo_of_kilospersack(id_of_output_product)
            Set lst = lsv.ListItems.Add(, , rs.Fields("item_code").Value)
                lst.SubItems(1) = getpercentage(activePartidaId, rs.Fields("id").Value) & "%"
                item_in_listview.Add getpercentage(activePartidaId, rs.Fields("id").Value)
            rs.MoveNext
        Loop
        Set rs = Nothing
    End If
End Sub
Function updateTotalPercentage() As Double
    Dim a As Double
    a = 0
    For Each item In item_in_listview
        a = a + item
    Next
    updateTotalPercentage = a
End Function
Function getpercentage(partida_id As Double, output_item_id As Integer) As Double
    Dim percent As Double
    Dim total_kg_out_per_item As Double
    On Error Resume Next
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = view_partida_stock_out_totals & " WHERE ps.partida_id = " & partida_id & " AND i.id=" & output_item_id & " group by i.id "
    Set rs = db.execute(sql)
    total_kg_out_per_item = rs.Fields("total_out").Value

    kilospersack = total_kg_out_per_item * no_of_kilospersack
    totalkg = Val(frmPartidaView.lsvStockInTotal.SelectedItem.SubItems(2))
    If totalkg = 0 Then
        getpercentage = "Current out percentage: 0%"
    Else
        percent = (kilospersack / totalkg) * 100
        getpercentage = FormatNumber(percent, 2)
    End If
End Function
Function getNo_of_kilospersack(output_item_id As Double) As Double
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `kilos_per_sack` ks inner join `items` i on ks.item_id=i.id where i.id=" & output_item_id & ""
    Set rs = db.execute(sql)
        no_of_kilospersack = rs.Fields("kilos_per_sack").Value
    Set rs = Nothing
End Function

Sub loadoutputProductOfThisPartida(lsv As ListView, partida_id As Double)
    Dim sql As String
    Dim col As New Collection
        sql = "SELECT * FROM `partida_raw_item` pi inner join `associated_products` ap " & _
              "on pi.raw_item_id=ap.raw_product_id inner join `items` i on ap.output_product_id=i.id " & _
              "WHERE pi.partida_id=" & partida_id & ""
    col.Add "*"
    Call populateResultOnThisListView(sql, lsv, col)
End Sub


