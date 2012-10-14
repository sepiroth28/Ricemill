VERSION 5.00
Begin VB.Form frmuserlogin 
   Caption         =   "USER LOG IN"
   ClientHeight    =   4350
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   Picture         =   "frmuserlogin.frx":0000
   ScaleHeight     =   4350
   ScaleWidth      =   7155
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtUsername 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   3480
      TabIndex        =   0
      Top             =   2280
      Width           =   3195
   End
   Begin VB.TextBox txtPassword 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Webdings"
         Size            =   11.25
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   3480
      PasswordChar    =   "="
      TabIndex        =   1
      Top             =   2820
      Width           =   3195
   End
   Begin VB.Image imgLogin 
      Height          =   570
      Left            =   5100
      Picture         =   "frmuserlogin.frx":24747
      Top             =   3450
      Width           =   1665
   End
   Begin VB.Image imgCancel 
      Height          =   570
      Left            =   3420
      Picture         =   "frmuserlogin.frx":28203
      Top             =   3450
      Width           =   1665
   End
End
Attribute VB_Name = "frmuserlogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub imgCancel_Click()
    End
End Sub

Private Sub imgLogin_Click()
    Dim checkuser As New Useraccount
    Dim mvarusername, mvarpassword As String
    Dim check_useraccount As Boolean
    Dim check_user_type As String
    
    mvarusername = txtUsername.Text
    mvarpassword = txtPassword.Text
    
    On Error Resume Next
    check_useraccount = checkuser.Check_UserAcount(mvarusername, mvarpassword)
    
    If check_useraccount = True Then
    
        check_user_type = checkuser.Check_UserType(mvarusername)
            
            If check_user_type = "admin" Then
                MsgBox "Welcome " & mvarusername, vbInformation, "Welcome"
                activeUser.loadUserAccount mvarusername
                Call grantUserPreviliges(activeUser.username)
                
               ' mdi_Inventory.stbNutrimart.Panels(2).Text = mvarusername
                MDIForm1.Show
             
            ElseIf check_user_type = "user" Then
                MsgBox "Welcome " & mvarusername, vbInformation, "Login"
                activeUser.loadUserAccount mvarusername
                 Call grantUserPreviliges(activeUser.username)
                
               ' mdi_Inventory.stbNutrimart.Panels(1).Text = "UserName"
               ' mdi_Inventory.stbNutrimart.Panels(2).Text = mvarusername
                MDIForm1.Show
               
            End If
                Unload Me
    Else
        prompt
    End If
End Sub

Sub prompt()
For Each cnt In frmLogin
    If TypeOf cnt Is TextBox Then
        cntr = cntr + 1
        If cntr = 1 Then
            MsgBox "Access Denied!..You only have 2 attempts remaining", vbInformation, "Warning!"
        ElseIf cntr = 2 Then
            MsgBox "Access Denied..!You only have 1 attempt remaining", vbInformation, "Warning!"
        Else
            MsgBox "Access failed in 3 attempts...System will now close!", vbExclamation, "Error Log-in"
            Unload Me
            End
        End If
    
        cnt.SetFocus
'        HLText cnt
        Exit Sub
    End If
Next cnt
End Sub
