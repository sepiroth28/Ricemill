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

Sub updateAssociatedItems(raw_id As Integer, output_id As Integer, lst As ListItem)
    Dim sql As String
        sql = "DELETE FROM associated_products WHERE raw_product_id=" & raw_id & " AND output_product_id=" & output_id & ""
    db.execute (sql)
    If lst.Checked = True Then
    Call saveAssociatedItems(raw_id, output_id)
    End If
End Sub
Sub saveKgKilosPerSack(output_item_id As Double, kg_per_sack As Double)
    Dim sql As String
        sql = "INSERT INTO `kilos_per_sack` VALUES(" & output_item_id & "," & kg_per_sack & ")"
    db.execute (sql)
End Sub
Sub updateKilosPerSack(output_item_id As Double, kg_per_sack As Double)
    Dim sql As String
        sql = "UPDATE `kilos_per_sack` SET kilos_per_sack=" & kg_per_sack & " WHERE item_id=" & output_item_id & ""
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


Sub outputProductInListview(lsv As ListView, raw_roduct_id As Double)
    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim lst As ListItem
    Dim temp As Double
        sql = "SELECT * FROM `items` i left join `associated_products` " & _
              "ap on i.id=ap.output_product_id where i.type='output'"
    Set rs = db.execute(sql)
    If rs.RecordCount Then
    lsv.ListItems.Clear
        Do Until rs.EOF
            Set lst = lsv.ListItems.Add(, , "")
            On Error Resume Next
            If IsNull(rs.Fields("raw_product_id").Value) Then
                temp = 0
            Else
                temp = rs.Fields("raw_product_id").Value
            End If
                If temp = raw_roduct_id Then
                lst.Checked = True
                Else
                lst.Checked = False
                End If
                lst.SubItems(1) = rs.Fields("id").Value
                lst.SubItems(2) = rs.Fields("item_code").Value
            rs.MoveNext
        Loop
    End If
End Sub
