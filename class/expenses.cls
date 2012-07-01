VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "expenses"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'local variable(s) to hold property value(s)
Private mvarid As Integer 'local copy
Private mvarpartida_id As Integer  'local copy
Private mvarexpense_desc As String 'local copy
Private mvaramount As Currency 'local copy
Private mvardate_created As String 'local copy


Private Sub Class_Initialize()
Me.id = 0
End Sub


Public Property Let id(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.id = 5
    mvarid = vData
End Property
Public Property Get id() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.id
    id = mvarid
End Property

Public Property Let partida_id(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_id = 5
    mvarpartida_id = vData
End Property
Public Property Get partida_id() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_id
    partida_id = mvarpartida_id
End Property
Public Property Let desc(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.description = 5
    mvarexpense_desc = vData
End Property
Public Property Get desc() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.description
    desc = mvarexpense_desc
End Property
Public Property Let amount(ByVal vData As Currency)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.amount = 5
    mvaramount = vData
End Property
Public Property Get amount() As Currency
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.amount
    amount = mvaramount
End Property
Public Property Let date_created(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.amount = 5
    mvardate_created = vData
End Property
Public Property Get date_created() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.amount
    date_created = mvardate_created
End Property

Public Sub add_expenses()
If Me.id = 0 Then
    Dim addexpenses As String
addexpenses = "INSERT INTO expenses(id,partida_id,description,amount,date_created) VALUES(NULL,'" & _
                Me.partida_id & "','" & _
                Me.desc & "','" & _
                Me.amount & "','" & _
                Me.date_created & "')"
db.execute addexpenses
End If
End Sub
