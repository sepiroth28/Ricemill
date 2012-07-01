Attribute VB_Name = "Helper_GLOBAL_VARS"
Public db As New db
Public activePartidaId As Integer
Public newPartida As Boolean
Public itemID As Integer


Public Sub get_item_id(desc As String)
Dim rs As New ADODB.Recordset
Dim id_of_item As Integer
Dim SQL As String
SQL = "select * from items where description ='" & desc & "'"
Set rs = db.execute(SQL)
itemID = rs.Fields(0).Value
End Sub

