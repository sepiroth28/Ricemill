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
Private mvarexpense_desc As String 'local copy
Private mvaramount As Currency 'local copy
Private mvardate_created As String 'local copy


Private Sub Class_Initialize()
Me.id = 0
End Sub


Public Property Let id(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.id = 5
    mvarid = vdata
End Property
Public Property Get id() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.id
    id = mvarid
End Property

Public Property Let desc(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.description = 5
    mvarexpense_desc = vdata
End Property
Public Property Get desc() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.description
    desc = mvarexpense_desc
End Property
Public Property Let amount(ByVal vdata As Currency)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.amount = 5
    mvaramount = vdata
End Property
Public Property Get amount() As Currency
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.amount
    amount = mvaramount
End Property
Public Property Let date_created(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.amount = 5
    mvardate_created = vdata
End Property
Public Property Get date_created() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.amount
    date_created = mvardate_created
End Property

Public Sub add_expenses()
If Me.id = 0 Then
    Dim addexpenses As String
addexpenses = "INSERT INTO expenses(id,description,amount,date_created) VALUES(NULL,'" & _
                Me.desc & "','" & _
                Me.amount & "','" & _
                Me.date_created & "')"
db.execute addexpenses
Me.associateToPartidaExpenses (activePartidaId)
End If
End Sub

Public Sub associateToPartidaExpenses(partida_id As Integer)
Dim last_expense_id As Integer
Dim insert As String

last_expense_id = getLastId

insert = "INSERT INTO partida_expenses VALUES(" & last_expense_id & "," & partida_id & ")"
db.execute insert

End Sub


Sub loadexpenses(partida_id As Integer)
Dim sql As String
Dim partida_name As String
Dim rs As New ADODB.Recordset
    sql = view_expenses_in_this_partida & " WHERE pe.partida_id = " & partida_id
   Set rs = db.execute(sql)
    partida_name = rs.Fields("name").Value
    Me.desc = rs.Fields("description").Value
    Me.amount = rs.Fields("amount").Value
    Me.date_created = rs.Fields("date_created")
End Sub

Sub printexpenses(partida_name As String)
Dim rs As New ADODB.Recordset
Dim sql As String
Dim gettotal As String
sql = "select * from expenses e inner join partida_expenses pe on e.id=pe.expenses_id where pe.partida_id='" & activePartidaId & "'"
Set rs = db.execute(sql)
Set dtapartidaexpenses.DataSource = rs
    dtapartidaexpenses.Sections(1).Controls("lblPartidaname").Caption = partida_name
    dtapartidaexpenses.Sections(1).Controls("lbldate").Caption = Date
sql = "select sum(e.amount) as total from expenses e inner join partida_expenses pe on e.id=pe.expenses_id where pe.partida_id='" & activePartidaId & "'"
Set rs = db.execute(sql)
    On Error Resume Next
    gettotal = rs.Fields("total").Value
    dtapartidaexpenses.Sections(5).Controls("lbltotal").Caption = "Php. " & gettotal
dtapartidaexpenses.Show 1
End Sub
