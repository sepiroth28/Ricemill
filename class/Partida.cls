VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Partida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarpartida_name As String 'local copy
Private mvarpartida_status As Integer 'local copy
Private mvarstockout_status As Integer 'local copy
Private mvarcreated_at As String 'local copy
Private mvarcreated_by As String 'local copy
'local variable(s) to hold property value(s)
Private mvarpartida_id As Integer 'local copy

Private mvarpartida_id_toevaluate As Integer
Private mvarpartida_name_toevaluate As String
Private mvarpartida_totalgross As Double
Private mvarpartida_totalcapital As Double
Private mvarpartida_totalexpenses As Double
Private mvarpartida_profit As Double


Public Property Let partida_id(ByVal vData As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_id = 5
    mvarpartida_id = vData
End Property


Public Property Get partida_id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_id
    partida_id = mvarpartida_id
End Property

Public Sub update_status(status_code As String)
End Sub

Public Sub delete_partida(partida_id As Integer)
End Sub

Public Sub load_partida(partida_id As Integer)
Dim sql As String
Dim rs As New ADODB.Recordset
'id, name, status, created_at, created_by
sql = "SELECT * FROM partida WHERE id = " & partida_id & " LIMIT 1"

Set rs = db.execute(sql)

If rs.RecordCount > 0 Then
    Me.partida_id = rs.Fields("id").Value
    Me.partida_name = rs.Fields("name").Value
    Me.partida_status = rs.Fields("status").Value
    Me.stockout_status = rs.Fields("stockout_status").Value
    Me.created_at = rs.Fields("created_at").Value
    Me.created_by = rs.Fields("created_by").Value
End If
Set rs = Nothing
End Sub

Public Sub save()
'id, name, status, created_at, created_by
If Me.partida_id = 0 Then
    Dim insert As String
    insert = "INSERT INTO partida VALUES(null,'" & _
                Me.partida_name & " '," & _
                Me.partida_status & ",'" & _
                Me.created_at & "','" & _
                Me.created_by & "','1')"
    db.execute insert
End If
End Sub

Public Property Let created_by(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarcreated_by = vData
End Property


Public Property Get created_by() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    created_by = mvarcreated_by
End Property



Public Property Let created_at(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_at = 5
    mvarcreated_at = vData
End Property


Public Property Get created_at() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_at
    created_at = mvarcreated_at
End Property



Public Property Let partida_status(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_status = 5
    mvarpartida_status = vData
End Property


Public Property Get partida_status() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_status
    partida_status = mvarpartida_status
End Property

Public Property Let stockout_status(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_status = 5
    mvarstockout_status = vData
End Property


Public Property Get stockout_status() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_status
    stockout_status = mvarstockout_status
End Property



Public Property Let partida_name(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_name = 5
    mvarpartida_name = vData
End Property


Public Property Get partida_name() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_name
    partida_name = mvarpartida_name
End Property



Private Sub Class_Initialize()
    Me.partida_id = 0
End Sub



'##########################################################################################################################

Public Property Let partida_id_toevaluate(ByVal vData As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_id = 5
    mvarpartida_id_toevaluate = vData
End Property


Public Property Get partida_id_toevaluate() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_id
    partida_id_toevaluate = mvarpartida_id_toevaluate
End Property

Public Property Let partida_name_toevaluate(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarpartida_name_toevaluate = vData
End Property


Public Property Get partida_name_toevaluate() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    partida_name_toevaluate = mvarpartida_name_toevaluate
End Property

Public Property Let partida_totalcapital(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarpartida_totalcapital = vData
End Property


Public Property Get partida_totalcapital() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    partida_totalcapital = mvarpartida_totalcapital
End Property

Public Property Let partida_totalexpenses(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarpartida_totalexpenses = vData
End Property


Public Property Get partida_totalexpenses() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    partida_totalexpenses = mvarpartida_totalexpenses
End Property

Public Property Let partida_totalgross(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarpartida_totalgross = vData
End Property


Public Property Get partida_totalgross() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    partida_totalgross = mvarpartida_totalgross
End Property

Public Property Let partida_profit(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarpartida_profit = vData
End Property


Public Property Get partida_profit() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    partida_profit = mvarpartida_profit
End Property

'this load partida that set to be evaluated
Public Sub load_partida_evaluation(partida_id_toevaluate As Integer)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim rs_capital As New ADODB.Recordset
Dim rs_expenses As New ADODB.Recordset
Dim rs_gross As New ADODB.Recordset

sql = "select * from partida where id= " & partida_id_toevaluate 'query partida record
Set rs = db.execute(sql)
sql = view_partida_capital & " WHERE ps.partida_id = " & partida_id_toevaluate & "  group by ps.partida_id LIMIT 1" 'query the capital
Set rs_capital = db.execute(sql)
sql = view_partida_expenses & " where pe.partida_id= " & partida_id_toevaluate & " group by pe.partida_id LIMIT 1" 'query the expenses
Set rs_expenses = db.execute(sql)
sql = view_partida_gross & " where pso.partida_id =" & partida_id_toevaluate & " group by pso.partida_id LIMIT 1" 'query the gross
Set rs_gross = db.execute(sql)


'test the query partida record
If rs.RecordCount > 0 Then
    Me.partida_id_toevaluate = rs.Fields("id").Value
    Me.partida_name_toevaluate = rs.Fields("name").Value
End If
Set rs = Nothing


'test the query partida capital
If rs_capital.RecordCount > 0 Then
    Me.partida_totalcapital = rs_capital.Fields(0).Value
Else
    Me.partida_totalcapital = 0
End If
Set rs_capital = Nothing


'test the query partida expenses
If rs_expenses.RecordCount > 0 Then
    Me.partida_totalexpenses = rs_expenses.Fields(0).Value
    Else
    Me.partida_totalexpenses = 0
End If
Set rs_expenses = Nothing


'test the query partida gross
If rs_gross.RecordCount > 0 Then
    Me.partida_totalgross = rs_gross.Fields(0).Value
Else
    Me.partida_totalgross = 0
End If
Set rs_gross = Nothing
Me.partida_profit = partida_totalgross - (partida_totalcapital + partida_totalexpenses)
End Sub
