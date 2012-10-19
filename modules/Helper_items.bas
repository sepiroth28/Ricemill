Attribute VB_Name = "Helper_items"
Sub loadProducts(lsv As ListView)
    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim lst As ListItem
    Dim col As New Collection
    lsv.ListItems.Clear
    
        sql = "SELECT * FROM `items` WHERE type ='output'"
        Set rs = db.execute(sql)
    col.Add "id"
    col.Add "item_code"
    Call populateResultOnThisListView(sql, lsv, col)
    
End Sub


Sub saveAssociatedItems(raw_id As Integer, output_id As Integer)
    Dim sql As String
        sql = "INSERT INTO associated_products VALUES(" & raw_id & "," & output_id & ")"
    db.execute (sql)
End Sub


Sub loadAllProducts(lsv As ListView, category As String)
    Dim sql As String
    Dim col As New Collection
    If category = "all" Then
        sql = "SELECT * FROM `items`"
    ElseIf category = "raw" Then
        sql = "SELECT * FROM `items` WHERE type='raw'"
    Else
        sql = "SELECT * FROM `items` WHERE type='output';"
    End If
    col.Add "*"
    Call populateResultOnThisListView(sql, lsv, col)
End Sub


Sub outputProductInListview(lsv As ListView, raw_product_id As Double)
    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim lst As ListItem
        sql = "SELECT * FROM `items` i inner join `associated_products` " & _
              "ap on i.id=ap.output_product_id where ap.raw_product_id=" & raw_product_id & ""
    Set rs = db.execute(sql)
    If rs.RecordCount Then
    lsv.ListItems.Clear
        Do Until rs.EOF
            Set lst = lsv.ListItems.Add(, , "")
                lst.Checked = True
                lst.SubItems(1) = rs.Fields("id").Value
                lst.SubItems(2) = rs.Fields("item_code").Value
            rs.MoveNext
        Loop
    End If
End Sub
