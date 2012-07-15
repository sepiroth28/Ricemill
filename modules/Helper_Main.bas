Attribute VB_Name = "Helper_Main"
Sub main()
initDb
MDIForm1.Show
'frmLogin.Show 1
End Sub

Sub initDb()
Call initializedConfig
db.username = DB_USERNAME
db.password = DB_PASSWORD
db.server = DBSERVER
db.database_name = DB_NAME
db.connect
End Sub
