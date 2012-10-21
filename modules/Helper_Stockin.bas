Attribute VB_Name = "Helper_Stockin"
Sub loadStockinListOnThisPartida(partida_id As Double, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_partida_stock_in_list & " WHERE ps.partida_id = " & partida_id
    attributes.Add "date_in"
    attributes.Add "provider_name"
    attributes.Add "num_of_sack"
    attributes.Add "qty_in"
    attributes.Add "description"
    attributes.Add "price"
    attributes.Add "total_amount"
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub

Sub loadStockInTotals(partida_id As Double, lsv As ListView, listv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem
Dim lst As ListItem
If partida_id <> 0 Then
    sql = view_partida_stock_in_totals & " WHERE ps.partida_id = " & partida_id
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    listv.ListItems.Clear
    On Error Resume Next
    If rs.RecordCount > 0 Then
        Do Until rs.EOF
'            Set list = lsv.ListItems.Add(, , "")
'            list.SubItems(1) = "TOTALS"
'            list.SubItems(2) = rs.Fields("total_in").Value
'            list.SubItems(4) = rs.Fields("total_amount").Value
'            totalcapitalholder = list.SubItems(4)
            Set list = lsv.ListItems.Add(, , "")
            list.SubItems(1) = "TOTAL KG: "
            list.SubItems(2) = rs.Fields("total_in").Value
            Set lst = listv.ListItems.Add(, , "")
            lst.SubItems(1) = "TOTAL AMOUNT: "
            lst.SubItems(2) = "Php." & FormatNumber(rs.Fields("total_amount").Value, 2)
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

Sub loadRawProduct(lsv As ListView)
Dim col As New Collection
Dim sql As String
    sql = "SELECT * FROM `items` where type='raw'"
col.Add "*"
Call populateResultOnThisListView(sql, lsv, col)
End Sub

Function IsRawProductSetThisPartida(partida_id As Double) As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM partida_raw_item WHERE partida_id=" & partida_id & ""
    Set rs = db.execute(sql)
    If rs.RecordCount Then
        IsRawProductSetThisPartida = True
    End If
End Function
Function getRawItemSetInThisPartida(partida_id As Double, txt As TextBox, cmd As CommandButton)
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `partida_raw_item` pi inner join `items` i on pi.raw_item_id=i.id WHERE pi.partida_id=" & partida_id & ""
    Set rs = db.execute(sql)
        txt.Text = rs.Fields("item_code").Value
        txt.Locked = True
        cmd.Enabled = False
    Set rs = Nothing
End Function
Function getRawItemId(partida_id As Double) As Integer
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `partida_raw_item` pi inner join `items` i on pi.raw_item_id=i.id WHERE pi.partida_id=" & partida_id & ""
    Set rs = db.execute(sql)
        getRawItemId = rs.Fields("id").Value
    Set rs = Nothing
End Function

Sub insertRawItemOfThisPartida(partida_id As Double, raw_item_id As Double)
    Dim sql As String
        sql = "INSERT INTO partida_raw_item VALUES(" & partida_id & "," & raw_item_id & ")"
    db.execute (sql)
End Sub

Sub showPriceOfThisrawItem(raw_item_id As Integer, txt As TextBox)
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `items` WHERE id= " & raw_item_id & ""
    Set rs = db.execute(sql)
    txt.Text = rs.Fields("unit_price").Value
    Set rs = Nothing
End Sub
