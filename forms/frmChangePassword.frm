VERSION 5.00
Begin VB.Form frmChangePassword 
   BackColor       =   &H0097C2FD&
   Caption         =   "CHANGE USER PASSWORD"
   ClientHeight    =   2385
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   3660
   LinkTopic       =   "Form1"
   ScaleHeight     =   2385
   ScaleWidth      =   3660
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   2295
      Left            =   60
      TabIndex        =   1
      Top             =   60
      Width           =   3555
      Begin VB.CommandButton cmdSave 
         Caption         =   "SAVE"
         Height          =   435
         Left            =   960
         TabIndex        =   5
         Top             =   1680
         Width           =   1575
      End
      Begin VB.TextBox txtnewpassword 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   300
         TabIndex        =   4
         Top             =   1200
         Width           =   3015
      End
      Begin VB.TextBox txtCurrentpassword 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   300
         TabIndex        =   0
         Top             =   420
         Width           =   3015
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter New Password:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   300
         TabIndex        =   3
         Top             =   960
         Width           =   2175
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter Current Password:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   300
         TabIndex        =   2
         Top             =   180
         Width           =   2175
      End
   End
End
Attribute VB_Name = "frmChangePassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSave_Click()
Dim edit_user As New Useraccount
    If Owner(txtCurrentpassword) = True Then
        If txtnewpassword.Text = "" Then
            MsgBox ("Fill up your new password")
        Else
            edit_user.loadUserAccount (activeUser.username)
            edit_user.Password = txtnewpassword.Text
            edit_user.editUser
            MsgBox ("Password has been updated")
            Unload Me
        End If
    Else
        MsgBox ("Current password mismatch")
    End If
End Sub

Private Sub Form_Load()
Me.Top = 3900
Me.Left = 6100
End Sub
