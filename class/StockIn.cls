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
Private mvardescription As String 'local copy
Public Sub associateToPartida(partida_id As Integer)
Dim last_stock_id As Integer
Dim insert As String

last_stock_id = getlastId

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
                Me.description & "','" & _
                Me.date_in & "','" & _
                Me.received_by & "')"
    db.execute insert
    Me.associateToPartida (activePartidaId)
End If
End Sub

Sub printstockin(partidaname As String)
Dim rs As New ADODB.Recordset
Dim gettotalkilos As Double
Dim gettotalamount As Double
Dim sql As String
 sql = view_partida_stock_in_list & " WHERE ps.partida_id = '" & activePartidaId & "'"
Set rs = db.execute(sql)

Set dtaStockin.DataSource = rs
    dtaStockin.Sections(1).Controls("lblPartidaname").Caption = partidaname
    dtaStockin.Sections(1).Controls("lbldate").Caption = Date
    
sql = view_partida_stock_in_totals & " WHERE ps.partida_id = '" & activePartidaId & "'"

    On Error Resume Next
Set rs = db.execute(sql)
    
    gettotalkilos = rs.Fields("total_in").Value
    gettotalamount = rs.Fields("total_amount").Value
    dtaStockin.Sections(5).Controls("lbltotalkilos").Caption = gettotalkilos & " Kg."
    dtaStockin.Sections(5).Controls("lbltotalamount").Caption = "Php. " & gettotalamount
dtaStockin.Show 1
End Sub


Public Property Let received_by(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.received_by = 5
    mvarreceived_by = vdata
End Property


Public Property Get received_by() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.received_by
    received_by = mvarreceived_by
End Property

Public Property Let description(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.received_by = 5
    mvardescription = vdata
End Property


Public Property Get description() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.received_by
    description = mvardescription
End Property


Public Property Let date_in(ByVal vdata As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.date_in = 5
    mvardate_in = vdata
End Property


Public Property Get date_in() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.date_in
    date_in = mvardate_in
End Property



Public Property Let total_amount(ByVal vdata As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.total_amount = 5
    mvartotal_amount = vdata
End Property


Public Property Get total_amount() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.total_amount
    total_amount = mvartotal_amount
End Property



Public Property Let unit_price(ByVal vdata As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.unit_price = 5
    mvarunit_price = vdata
End Property


Public Property Get unit_price() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.unit_price
    unit_price = mvarunit_price
End Property



Public Property Let qty_in(ByVal vdata As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.qty_in = 5
    mvarqty_in = vdata
End Property


Public Property Get qty_in() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.qty_in
    qty_in = mvarqty_in
End Property



Public Property Let item_id(ByVal vdata As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.item_id = 5
    mvaritem_id = vdata
End Property


Public Property Get item_id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.item_id
    item_id = mvaritem_id
End Property



Public Property Let id(ByVal vdata As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.id = 5
    mvarid = vdata
End Property


Public Property Get id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.id
     id = mvarid
End Property



Private Sub Class_Initialize()
Me.id = 0
End Sub
