Attribute VB_Name = "Helper_Main"
Sub main()
Call initializedConfig

db.server = DBSERVER
db.database_name = DB_NAME
db.username = DB_USERNAME
db.Password = DB_PASSWORD
If db.connect Then
    frmuserlogin.Show
'    MsgBox "Successfuly connected to database...", vbInformation, "Nutrimart"
Else
    MsgBox "Failed to connect to database", vbInformation, "Nutrimart"
End If
  
End Sub
