VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "provider"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'local variable(s) to hold property value(s)
Private mvarprovider_id As Integer 'local copy
Private mvarprovider_name As String 'local copy
Private mvarlast_insert_provider_id As Integer 'local copy
'local variable(s) to hold property value(s)
Private mvarnewpartida As Partida 'local copy
'local variable(s) to hold property value(s)
Private mvarprovider_address As String 'local copy
Public Sub insertPartidaProvider(stockin_id As Integer)
    Dim sql As String
    sql = "INSERT INTO stockin_provider " & _
    " VALUES(" & stockin_id & "," & Me.provider_id & ")"
    db.execute (sql)
End Sub

Public Property Let provider_address(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.provider_address = 5
    mvarprovider_address = vData
End Property


Public Property Get provider_address() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.provider_address
    provider_address = mvarprovider_address
End Property

Public Property Set newPartida(ByVal vData As Partida)
'used when assigning an Object to the property, on the left side of a Set statement.
'Syntax: Set x.newpartida = Form1
    Set mvarnewpartida = vData
End Property


Public Property Get newPartida() As Partida
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.newpartida
    Set newPartida = mvarnewpartida
End Property
Public Sub loadProvider(provider_id As Integer)
    Dim query_provider As String
    Dim rs As New ADODB.Recordset
        query_provider = "SELECT * FROM provider WHERE id= " & provider_id & ""
    Set rs = db.execute(query_provider)
        With Me
            .provider_id = rs.Fields("id").Value
            .provider_name = rs.Fields("name").Value
            .provider_address = rs.Fields("address").Value
        End With
End Sub

Public Sub updateProvider(provider_id)
    Dim update_provider As String
        update_provider = "UPDATE provider SET Name='" & Me.provider_name & "',Address='" & Me.provider_address & "'"
    db.execute (update_provider)
End Sub

Public Sub insertProvider()
Dim insert_provider As String
    insert_provider = "INSERT INTO provider values(NULL,'" & Me.provider_name & "','" & Me.provider_address & "')"
    db.execute (insert_provider)
End Sub

Public Property Let provider_name(ByVal vData As String)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.provider_name = 5
    mvarprovider_name = vData
End Property


Public Property Get provider_name() As String
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.provider_name
    provider_name = mvarprovider_name
End Property



Public Property Let provider_id(ByVal vData As Integer)
'used when assigning a value to the property, on the left side of an assignment.
'Syntax: X.provider_id = 5
    mvarprovider_id = vData
End Property


Public Property Get provider_id() As Integer
'used when retrieving value of a property, on the right side of an assignment.
'Syntax: Debug.Print X.provider_id
    provider_id = mvarprovider_id
End Property



