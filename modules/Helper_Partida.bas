Attribute VB_Name = "Helper_Partida"
Sub loadPartidaList(lsv As ListView)
Dim col As New Collection
Dim sql As String

sql = "SELECT * FROM partida"

col.Add "*"
Call populateResultOnThisListView(sql, lsv, col)

End Sub


Sub loadPartidaListinSettings(sql As String, lsv As ListView)
Dim coll As New Collection
coll.Add "*"
Call populateResultOnThisListView(sql, lsv, coll)
End Sub


Sub swithch_partidaload(lsv As ListView, pswitch As Boolean)
Dim sql As String
If pswitch = False Then
    sql = "select * from partida where status = 1"
Else
    sql = "select * from partida where status=0"
End If
    Call loadPartidaListinSettings(sql, lsv)
End Sub

Sub statuschanger(partida_id As Integer, selected As Boolean, pswitch As Boolean)
Dim sql As String
If selected = True And pswitch = True Or selected = False And pswitch = False Then
    sql = "update partida set status=1 where id='" & partida_id & "'"
ElseIf selected = False And pswitch = True Or selected = True And pswitch = False Then
    sql = "update partida set status=0 where id='" & partida_id & "'"

End If
    db.execute (sql)
End Sub

Sub closepartida(partida_id As Integer, status As Integer)

    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim confirm As Byte
    If status = 1 Then
        confirm = MsgBox("Are you sure you want to close partida?", vbQuestion + vbYesNo)
        If confirm = vbYes Then
            sql = "update partida set status=0 where id='" & partida_id & "'"
            Set rs = db.execute(sql)
            MsgBox ("successfully close partida"), vbInformation, "Close partida"
        End If
    Else
        MsgBox ("Partida Already Closed!"), vbInformation, "Close Partida"
    End If
End Sub
