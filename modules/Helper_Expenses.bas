Attribute VB_Name = "Helper_Expenses"
Sub totalexpenses(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem
If partida_id <> 0 Then
    sql = "SELECT partida_id,sum(amount) as total_amunt from expenses exp " & _
    "where exp.partida_id='" & partida_id & "' group by exp.partida_id"
    MsgBox sql
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    On Error Resume Next
    If rs.RecordCount > 0 Then
        Do Until rs.EOF
            Set list = lsv.ListItems.Add(, , "")
            list.SubItems(1) = "TOTALS EXPENSES:"
            list.SubItems(4) = rs.Fields("total_amunt").Value
        rs.MoveNext
        Loop
    End If
End If
End Sub

Sub loadExpensesOnthisPartida(partida_id As Integer, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_expenses_in_this_partida & " WHERE exp.partida_id = " & partida_id
    attributes.Add "description"
    attributes.Add "amount"
    attributes.Add "date_created"
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub


