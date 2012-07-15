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
Private mvarusername As String
Private mvaruserpass As String
Private mvarusertype As String

Public Property Let username(ByVal vdata As String)
mvarusername = vdata
End Property

Public Property Get username() As String
username = mvarusername
End Property

Public Property Let password(ByVal vdata As String)
mvaruserpass = vdata
End Property

Public Property Get password() As String
password = mvaruserpass
End Property


Public Property Let usertype(ByVal vdata As String)
mvarusertype = vdata
End Property

Public Property Get usertype() As String
usertype = mvarusertype
End Property

Public Sub insert_user()
Dim sql As String
    sql = "insert into user_account " & _
            "values(" & _
            "'" & Me.username & " '," & _
            "md5('" & Me.password & "')," & _
            "'" & Me.usertype & " ') "
    db.execute (sql)
MsgBox ("New user has been created"), vbInformation, "User Account"
End Sub

