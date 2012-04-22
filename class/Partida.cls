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
Public Sub update_status(status_code As String)
End Sub

Public Sub delete_partida(partida_id As Integer)
End Sub

Public Sub load_partida(partida_id As Integer)
End Sub

Public Sub save()
End Sub

Public Property Let created_by(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_by = 5
    mvarcreated_by = vData
End Property


Public Property Get created_by() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_by
    Set created_by = mvarcreated_by
End Property



Public Property Let created_at(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.created_at = 5
    mvarcreated_at = vData
End Property


Public Property Get created_at() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.created_at
    Set created_at = mvarcreated_at
End Property



Public Property Let partida_status(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.partida_status = 5
    mvarpartida_status = vData
End Property


Public Property Get partida_status() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.partida_status
    Set partida_status = mvarpartida_status
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



