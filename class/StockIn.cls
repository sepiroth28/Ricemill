VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "StockIn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarid As Integer 'local copy
Private mvaritem_id As Integer 'local copy
Private mvarqty_in As Double 'local copy
Private mvarunit_price As Double 'local copy
Private mvartotal_amount As Double 'local copy
Private mvardate_in As String 'local copy
Private mvarreceived_by As String 'local copy
Public Sub associateToPartida(partida_id As Integer)
Dim last_stock_id As Integer
Dim insert As String

last_stock_id = getLastId

insert = "INSERT INTO partida_stockin VALUES(" & partida_id & "," & last_stock_id & ")"
db.execute insert

End Sub

Public Sub delete_stockin()
End Sub

Public Sub load_stockin(id As Integer)
End Sub

Public Sub save_stockin()
Dim insert As String

'id, item_id, qty_in, price, total_amount, date_in, received_by
If Me.id = 0 Then
    insert = "INSERT INTO stock_in VALUES(null," & _
                Me.item_id & "," & _
                Me.qty_in & "," & _
                Me.unit_price & "," & _
                Me.total_amount & ",'" & _
                Me.date_in & "','" & _
                Me.received_by & "')"
    db.execute insert
    Me.associateToPartida (activePartidaId)
End If
End Sub

Public Property Let received_by(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.received_by = 5
    mvarreceived_by = vData
End Property


Public Property Get received_by() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.received_by
    received_by = mvarreceived_by
End Property



Public Property Let date_in(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.date_in = 5
    mvardate_in = vData
End Property


Public Property Get date_in() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.date_in
    date_in = mvardate_in
End Property



Public Property Let total_amount(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.total_amount = 5
    mvartotal_amount = vData
End Property


Public Property Get total_amount() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.total_amount
    total_amount = mvartotal_amount
End Property



Public Property Let unit_price(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.unit_price = 5
    mvarunit_price = vData
End Property


Public Property Get unit_price() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.unit_price
    unit_price = mvarunit_price
End Property



Public Property Let qty_in(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.qty_in = 5
    mvarqty_in = vData
End Property


Public Property Get qty_in() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.qty_in
    qty_in = mvarqty_in
End Property



Public Property Let item_id(ByVal vData As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.item_id = 5
    mvaritem_id = vData
End Property


Public Property Get item_id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.item_id
    item_id = mvaritem_id
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



Private Sub Class_Initialize()
Me.id = 0
End Sub
