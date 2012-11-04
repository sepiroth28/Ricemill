Attribute VB_Name = "Helper_Main"
Sub main()
Call initializedConfig

db.server = DBSERVER
db.database_name = DB_NAME
db.username = DB_USERNAME
db.Password = DB_PASSWORD

'assigning value to 2nd database
db2.server = DBSERVER2
db2.database_name = DB_NAME2
db2.username = DB_USERNAME2
db2.Password = DB_PASSWORD2

If db.connect And db2.connect Then
    frmuserlogin.Show
'    MsgBox "Successfuly connected to database...", vbInformation, "Nutrimart"
Else
    MsgBox "Failed to connect to database", vbInformation, "Nutrimart"
End If
  
End Sub
