VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "User_Previleges"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarcanCreatePartida As Boolean 'local copy
Private mvarcanStockIn As Boolean 'local copy
Private mvarcanStockOut As Boolean 'local copy
'local variable(s) to hold property value(s)
Private mvarcanClosePartida As Boolean 'local copy
Private mvarcanClosePartidaStockout As Boolean 'local copy
Public Property Let canClosePartidaStockout(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canClosePartidaStockout = 5
    mvarcanClosePartidaStockout = vData
End Property


Public Property Get canClosePartidaStockout() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canClosePartidaStockout
    canClosePartidaStockout = mvarcanClosePartidaStockout
End Property



Public Property Let canClosePartida(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canClosePartida = 5
    mvarcanClosePartida = vData
End Property


Public Property Get canClosePartida() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canClosePartida
    canClosePartida = mvarcanClosePartida
End Property




Public Property Let canStockOut(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canStockIn = 5
    mvarcanStockOut = vData
End Property


Public Property Get canStockOut() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canStockIn
     canStockOut = mvarcanStockOut
End Property



Public Property Let canStockIn(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canAddCustomer = 5
    mvarcanStockIn = vData
End Property


Public Property Get canStockIn() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canAddCustomer
     canStockIn = mvarcanStockIn
End Property



Public Property Let canCreatePartida(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canProcessPayment = 5
    mvarcanCreatePartida = vData
End Property


Public Property Get canCreatePartida() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canProcessPayment
     canCreatePartida = mvarcanCreatePartida
End Property



