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
