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
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarid As Integer 'local copy
Private mvarexpense_desc As String 'local copy
Private mvaramount As Currency 'local copy
Private mvardate_created As String 'local copy
'local variable(s) to hold property value(s)
Private mvarno_of_kg As Double 'local copy
Private mvarrate_per_kg As Double 'local copy
Public Property Let rate_per_kg(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.rate_per_kg = 5
    mvarrate_per_kg = vData
End Property


Public Property Get rate_per_kg() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.rate_per_kg
    rate_per_kg = mvarrate_per_kg
End Property



Public Property Let no_of_kg(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.no_of_kg = 5
    mvarno_of_kg = vData
End Property


Public Property Get no_of_kg() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.no_of_kg
    no_of_kg = mvarno_of_kg
End Property
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
addexpenses = "INSERT INTO expenses(id,description,amount,date_created,no_of_kg,rate_per_kg) VALUES(NULL,'" & _
                Me.desc & "','" & _
                Me.amount & "','" & _
                Me.date_created & "'," & _
                Me.no_of_kg & "," & _
                Me.rate_per_kg & ")"
db.execute addexpenses
Me.associateToPartidaExpenses (activePartidaId)
End If
End Sub

Public Sub associateToPartidaExpenses(partida_id As Integer)
Dim last_expense_id As Integer
Dim insert As String

last_expense_id = getlastId

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
    Me.date_created = rs.Fields("date_created").Value
    Me.no_of_kg = rs.Fields("no_of_kg").Value
    Me.rate_per_kg = rs.Fields("rate_per_kg").Value
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
