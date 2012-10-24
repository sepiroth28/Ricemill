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
Function usernameIsExist(username As String) As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `user_account` where username='" & username & "'"
    Set rs = db.execute(sql)
        If rs.RecordCount Then
            usernameIsExist = True
        End If
End Function

Function Owner(curent_password As String) As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `user_account` where username='" & activeUser.username & "' AND password=md5('" & curent_password & "')"
    Set rs = db.execute(sql)
    If rs.RecordCount Then
        Owner = True
    End If
End Function

Sub savePrevilegesOFThisUser(username As String, lsv As ListView)
    Dim lst As ListItem
    Dim status As Integer
    Dim sql As String
    Dim rs As New ADODB.Recordset
    sql = "SELECT * FROM `user_previleges` WHERE username='" & username & "'"
    Set rs = db.execute(sql)
    If rs.RecordCount Then
    sql = "DELETE FROM `user_previleges` WHERE username='" & username & "'"
    db.execute (sql)
    End If
        For Each lst In lsv.ListItems
            If lst.Checked = True Then
            status = 1
            Else
            status = 0
            End If
            sql = "INSERT INTO `user_previleges` VALUES(NULL,'" & username & "'," & lst.Text & "," & status & ")"
            db.execute (sql)
        Next
End Sub

Sub loadPrevilegesSetOfThisUserAccount(username As String, lsv As ListView)
        Dim lst As ListItem
        Dim sql As String
        Dim rs As New ADODB.Recordset
        Dim temp As Integer
        
            sql = "SELECT *,p.previleges as prvl,p.id as p_id FROM previleges p INNER JOIN `user_previleges` up on p.id=up.previleges where up.username='" & username & "'"
        Set rs = db.execute(sql)
        lsv.ListItems.Clear
        Do Until rs.EOF
            temp = rs.Fields("status").Value
            Set lst = lsv.ListItems.Add(, , rs.Fields("p_id").Value)
                lst.SubItems(1) = rs.Fields("prvl").Value
                If temp = 1 Then
                    lst.Checked = True
                Else
                    lst.Checked = False
                End If
            rs.MoveNext
        Loop
End Sub

