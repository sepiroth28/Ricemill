Attribute VB_Name = "Helper_Core"
Sub populateResultOnThisListView(sql As String, lsv As ListView, attrubutes As Collection)
Dim rs As New ADODB.Recordset
Dim list As ListItem
Dim item As Object
Dim count As Integer

Set rs = db.execute(sql)
lsv.ListItems.Clear
    If rs.RecordCount > 0 Then
    
        Do Until rs.EOF
        count = 1
            Set list = lsv.ListItems.Add(, , rs.Fields(0).Value)
            If attrubutes.count = 1 And attrubutes.item(1) = "*" Then
                For count = 1 To rs.Fields.count - 1
                    list.SubItems(count) = rs.Fields(count).Value
                Next count
            Else
                For Each item In attrubutes
                    list.SubItems(count) = rs.Fields(attrubutes).Value
                count = count + 1
                Next
            End If
        rs.MoveNext
        Loop
    End If

Set rs = Nothing
End Sub

Function getLastId() As Integer
getLastId = Val(db.execute("SELECT last_insert_id()").Fields(0).Value)
End Function