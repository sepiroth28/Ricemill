Attribute VB_Name = "Helper_Partida"
Sub loadPartidaList(lsv As ListView)
Dim col As New Collection
Dim sql As String

sql = "SELECT * FROM partida"
col.Add "*"
Call populateResultOnThisListView(sql, lsv, col)

End Sub
