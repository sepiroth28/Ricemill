Attribute VB_Name = "Helper_useraccount"
Sub loadAllUsers(lsv As ListView)
    Dim sql As String
    Dim col As New Collection
        sql = "SELECT * FROM `user_account`"
    col.Add "*"
    
    Call populateResultOnThisListView(sql, lsv, col)
End Sub


Sub loadPrevilegesList(lsv As ListView)
    Dim sql As String
    Dim col As New Collection
    
        sql = "SELECT * FROM previleges"
    col.Add "*"
    Call populateResultOnThisListView(sql, lsv, col)
End Sub


Function Owner(curent_password As String) As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `user_account` where username='" & activeUser.username & "' AND password=md5('" & curent_password & "')"
    Set rs = db.execute(sql)
    If rs.RecordCount Then
        Owner = True
    End If
End Function

