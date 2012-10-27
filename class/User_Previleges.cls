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
'local variable(s) to hold property value(s)
Private mvarcanEditDeletePartidaProd As Boolean 'local copy
'local variable(s) to hold property value(s)
Private mvarcanOpenClosePartida As Boolean 'local copy
Private mvarcanEvaluatePartida As Boolean 'local copy
'local variable(s) to hold property value(s)
Private mvarcanCreateUserAccount As Boolean 'local copy
'local variable(s) to hold property value(s)
Private mvarcanSendPartidaToArchive As Boolean 'local copy
Public Property Let canSendPartidaToArchive(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canSendPartidaToArchive = 5
    mvarcanSendPartidaToArchive = vData
End Property


Public Property Get canSendPartidaToArchive() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canSendPartidaToArchive
    canSendPartidaToArchive = mvarcanSendPartidaToArchive
End Property



Public Property Let canCreateUserAccount(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canCreateUserAccount = 5
    mvarcanCreateUserAccount = vData
End Property


Public Property Get canCreateUserAccount() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canCreateUserAccount
    canCreateUserAccount = mvarcanCreateUserAccount
End Property



Public Property Let canEvaluatePartida(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canEvaluatePartida = 5
    mvarcanEvaluatePartida = vData
End Property


Public Property Get canEvaluatePartida() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canEvaluatePartida
    canEvaluatePartida = mvarcanEvaluatePartida
End Property



Public Property Let canOpenClosePartida(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canOpenClosePartida = 5
    mvarcanOpenClosePartida = vData
End Property


Public Property Get canOpenClosePartida() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canOpenClosePartida
    canOpenClosePartida = mvarcanOpenClosePartida
End Property




Public Property Let canEditDeletePartidaProd(ByVal vData As Boolean)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.canEditDeleteStockin = 5
    mvarcanEditDeletePartidaProd = vData
End Property


Public Property Get canEditDeletePartidaProd() As Boolean
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.canEditDeleteStockin
    canEditDeletePartidaProd = mvarcanEditDeletePartidaProd
End Property

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




