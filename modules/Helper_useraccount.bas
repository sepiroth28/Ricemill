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
