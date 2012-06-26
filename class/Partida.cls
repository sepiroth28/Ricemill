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
Private mvarpartida_status As String 'local copy
Private mvarcreated_at As String 'local copy
Private mvarcreated_by As String 'local copy
'local variable(s) to hold property value(s)
Private mvarpartida_id As Integer 'local copy
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
Dim SQL As String
Dim rs As New ADODB.Recordset
'id, name, status, created_at, created_by
SQL = "SELECT * FROM partida WHERE id = " & partida_id & " LIMIT 1"

Set rs = db.execute(SQL)

If rs.RecordCount > 0 Then
    Me.partida_id = rs.Fields("id").Value
    Me.partida_name = rs.Fields("name").Value
    Me.partida_status = rs.Fields("status").Value
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
                Me.partida_name & "'," & _
                Me.partida_status & ",'" & _
                Me.created_at & "','" & _
                Me.created_by & "')"
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
