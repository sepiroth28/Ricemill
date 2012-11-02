Attribute VB_Name = "Helper_Expenses"
Sub totalexpenses(partida_id As Double, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem
If partida_id <> 0 Then
    sql = "SELECT sum(amount) as total_amunt from expenses exp " & _
    "INNER JOIN partida_expenses pe ON exp.id=pe.expenses_id INNER JOIN " & _
    " partida p on p.id=pe.partida_id WHERE p.id='" & partida_id & "' group by p.id"
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    On Error Resume Next
    If rs.RecordCount > 0 Then
        Do Until rs.EOF
            Set list = lsv.ListItems.Add(, , "TOTAL EXPENSES: ")
            list.SubItems(1) = "Php." & FormatNumber(rs.Fields("total_amunt").Value, 2)
            totalexpensesholder = list.SubItems(1)
        rs.MoveNext
        Loop
    Else
    Set list = lsv.ListItems.Add(, , "TOTAL EXPENSES: ")
    list.SubItems(1) = "Php." & FormatNumber(0, 2)
    End If
End If
End Sub

Sub loadExpensesOnthisPartida(partida_id As Double, lsv As ListView)
Dim sql As String
Dim attributes As New Collection
If partida_id <> 0 Then
    sql = view_expenses_in_this_partida & " WHERE pe.partida_id = " & partida_id
    attributes.Add "description"
    attributes.Add "amount"
    attributes.Add "date_created"
    
    Call populateResultOnThisListView(sql, lsv, attributes)
End If
End Sub

Sub loadExpensesOnthisPartida_itemized(partida_id As Double, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim lst As ListItem
    sql = view_expenses_in_this_partida_itemized & " WHERE pe.partida_id = " & partida_id
Set rs = db.execute(sql)
    lsv.ListItems.Clear
    If rs.RecordCount Then
    Do Until rs.EOF
        Set lst = lsv.ListItems.Add(, , UCase(rs.Fields("description").Value))
            lst.SubItems(1) = "Php." & FormatNumber(rs.Fields("amount").Value, 2)
        rs.MoveNext
    Loop
    End If
End Sub




