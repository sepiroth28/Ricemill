VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Item"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarid As Integer 'local copy
Private mvaritem_code As String 'local copy
Private mvardescription As String 'local copy
Private mvarunit_price As Currency 'local copy
Private mvarunit_of_measure As String 'local copy
Private mvarstatus As String 'local copy
Private Sub Class_Initialize()
    Me.id = 0
End Sub
Public Sub load_status(status As String)
End Sub

Public Sub load_item(item_id As Integer)
End Sub

Public Sub delete_item(item_id As Integer)
End Sub

Public Sub save()
If Me.id = 0 Then
    Dim insert As String
    insert = "INSERT INTO items VALUES(null,'" & _
                Me.item_code & "','" & _
                Me.description & "','" & _
                Me.unit_price & "','" & _
                Me.unit_of_measure & "','" & _
                Me.status & "')"
    db.execute insert
End If

End Sub

Public Property Let status(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.status = 5
    mvarstatus = vData
End Property


Public Property Get status() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.status
    status = mvarstatus
End Property



Public Property Let unit_of_measure(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.unit_of_measure = 5
    mvarunit_of_measure = vData
End Property


Public Property Get unit_of_measure() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.unit_of_measure
    unit_of_measure = mvarunit_of_measure
End Property



Public Property Let unit_price(ByVal vData As Currency)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.unit_price = 5
    mvarunit_price = vData
End Property


Public Property Get unit_price() As Currency
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.unit_price
    unit_price = mvarunit_price
End Property



Public Property Let description(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.description = 5
    mvardescription = vData
End Property


Public Property Get description() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.description
    description = mvardescription
End Property



Public Property Let item_code(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.item_code = 5
    mvaritem_code = vData
End Property


Public Property Get item_code() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.item_code
    item_code = mvaritem_code
End Property



Public Property Let id(ByVal vData As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.id = 5
    mvarid = vData
End Property


Public Property Get id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.id
    id = mvarid
End Property



