Attribute VB_Name = "Helper_Provider"
Sub loadProviderListInThisListview(lsv As ListView)
   Dim queryprovider As String
   Dim rs As New ADODB.Recordset
   
   queryprovider = "SELECT * FROM provider ORDER BY Name"
                Set rs = db.execute(queryprovider)
   Dim lst As ListItem
   lsv.ListItems.Clear
   On Error Resume Next
   If rs.RecordCount Then
    Do Until rs.EOF

     Set lst = lsv.ListItems.Add(, , rs.Fields("id").Value)
          lst.SubItems(1) = rs.Fields("Name").Value
          lst.SubItems(2) = rs.Fields("Address").Value
    rs.MoveNext
    Loop
   End If
End Sub
