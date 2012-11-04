VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "default_manufacturer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarmanufacturers_id As Double 'local copy
Private mvarmanufacturers_name As String 'local copy
Private mvarmanufacturers_add As String 'local copy
Private mvarmanufacturers_number As String 'local copy
Public Sub update()
    Dim sql As String
        sql = "UPDATE `manufacturers` SET manufacturers_id=" & Me.manufacturers_id & ",manufacturers_name='" & Me.manufacturers_name & "' " & _
        ",manufacturers_add='" & Me.manufacturers_add & "',manufacturers_number='" & Me.manufacturers_number & "'"
    db.execute (sql)
        
End Sub

Public Sub insert()
    Dim sql As String
        sql = "INSERT INTO `manufacturers` VALUES(" & Me.manufacturers_id & ",'" & Me.manufacturers_name & "','" & Me.manufacturers_add & "'," & _
            "'" & Me.manufacturers_number & "')"
    db.execute (sql)
End Sub
Public Sub loadmanufacturer(manufacturers As String)
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT * FROM `manufacturers` WHERE manufacturers_name='" & manufacturers & "'"
    Set rs = db2.execute(sql)
    With Me
            .manufacturers_id = rs.Fields("manufacturers_id").Value
            .manufacturers_name = rs.Fields("manufacturers_name").Value
            .manufacturers_add = rs.Fields("manufacturers_add").Value
            .manufacturers_number = rs.Fields("manufacturers_number").Value
    End With
    Set rs = Nothing
End Sub

Public Property Let manufacturers_number(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.manufacturers_number = 5
    mvarmanufacturers_number = vData
End Property


Public Property Get manufacturers_number() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.manufacturers_number
    manufacturers_number = mvarmanufacturers_number
End Property



Public Property Let manufacturers_add(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.manufacturers_add = 5
    mvarmanufacturers_add = vData
End Property


Public Property Get manufacturers_add() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.manufacturers_add
    manufacturers_add = mvarmanufacturers_add
End Property



Public Property Let manufacturers_name(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.manufacturers_name = 5
    mvarmanufacturers_name = vData
End Property


Public Property Get manufacturers_name() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.manufacturers_name
    manufacturers_name = mvarmanufacturers_name
End Property



Public Property Let manufacturers_id(ByVal vData As Double)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.manufacturers_id = 5
    mvarmanufacturers_id = vData
End Property


Public Property Get manufacturers_id() As Double
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.manufacturers_id
    manufacturers_id = mvarmanufacturers_id
End Property



