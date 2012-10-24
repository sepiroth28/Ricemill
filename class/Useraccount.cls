VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Useraccount"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mvarusername As String
Private mvaruserpass As String
Private mvarusertype As String
Private mvarpreviliges As New User_Previleges  'local copy
Public Sub deleteUserAccount()
    Dim sql As String
        sql = "DELETE FROM `user_account` WHERE username='" & Me.username & "'"
    db.execute (sql)
End Sub

Public Sub editUseracount()
    Dim sql As String
        sql = "UPDATE `user_account` SET username='" & Me.username & "',password='" & Me.Password & "',user_type='" & Me.usertype & "' WHERE username='" & Me.username & "'"
db.execute (sql)
End Sub
Public Sub editUser()
    Dim sql As String
        sql = "UPDATE `user_account` SET username='" & Me.username & "',password=md5('" & Me.Password & "'),user_type='" & Me.usertype & "' WHERE username='" & Me.username & "'"
db.execute (sql)
End Sub

Public Property Set previliges(ByVal vData As User_Previleges)
'used when assigning an Object to the property, on the left side of a Set statement.
'Syntax: Set x.previliges = Form1
    Set mvarpreviliges = vData
End Property


Public Property Get previliges() As User_Previleges
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.previliges
    Set previliges = mvarpreviliges
End Property

Public Property Let username(ByVal vData As String)
mvarusername = vData
End Property

Public Property Get username() As String
username = mvarusername
End Property

Public Property Let Password(ByVal vData As String)
mvaruserpass = vData
End Property

Public Property Get Password() As String
Password = mvaruserpass
End Property


Public Property Let usertype(ByVal vData As String)
mvarusertype = vData
End Property

Public Property Get usertype() As String
usertype = mvarusertype
End Property

Public Sub insert_user()
Dim sql As String
    sql = "insert into user_account " & _
            "values(" & _
            "'" & Me.username & " '," & _
            "md5('" & Me.Password & "')," & _
            "'" & Me.usertype & " ') "
    db.execute (sql)
MsgBox ("New user has been created"), vbInformation, "User Account"
End Sub


Public Function Check_UserAcount(ByVal username As String, ByVal Password As String) As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
    
    sql = "SELECT * FROM user_account WHERE username ='" & username & "' AND password = md5('" & Password & "')"
    
    Set rs = db.execute(sql)
    
    If rs.RecordCount > 0 Then
        Check_UserAcount = True
    Else
        Check_UserAcount = False
    End If
    Set rs = Nothing
End Function

Function Check_UserType(ByVal username As String) As String
    Dim sql As String
    Dim rs As New ADODB.Recordset
    
    
    sql = "SELECT user_type FROM user_account WHERE  username = '" & username & "'"
    
    Set rs = db.execute(sql)
    
    If rs.RecordCount > 0 Then
         Check_UserType = rs.Fields("user_type").Value
    End If
   
    
    Set rs = Nothing
    
End Function

Function loadUserAccount(ByVal username As String) As Useraccount
    Dim sql As String
    Dim rs As New ADODB.Recordset
    
    sql = "SELECT * FROM user_account WHERE username = '" & username & "'"
    
    Set rs = db.execute(sql)
    
    Me.username = rs.Fields(0).Value
    Me.Password = rs.Fields(1).Value
    Me.usertype = rs.Fields(2).Value
    
End Function
