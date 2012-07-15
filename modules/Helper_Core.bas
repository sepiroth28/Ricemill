Attribute VB_Name = "Helper_Core"
Sub populateResultOnThisListView(sql As String, lsv As ListView, attrubutes As Collection)
Dim rs As New ADODB.Recordset
Dim list As ListItem
Dim item As String
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
                For Each items In attrubutes
                    list.SubItems(count) = rs.Fields(items).Value
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

Public Sub calendar(frm As Form, calc As Form)
calc.Top = frm.Top + 1500
calc.Left = frm.Left + 1500
End Sub
