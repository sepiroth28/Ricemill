VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManageUseraccount 
   BackColor       =   &H00000080&
   Caption         =   "MANAGE USER ACCOUNT"
   ClientHeight    =   6975
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   7830
   LinkTopic       =   "Form1"
   ScaleHeight     =   6975
   ScaleWidth      =   7830
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   6795
      Left            =   60
      TabIndex        =   0
      Top             =   90
      Width           =   7725
      Begin VB.CommandButton cmdAddnew_user 
         Caption         =   "[+] Add New User"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   5580
         TabIndex        =   3
         Top             =   1050
         Width           =   2025
      End
      Begin MSComctlLib.ListView lsvuseraccounts 
         Height          =   4755
         Left            =   120
         TabIndex        =   2
         Top             =   1680
         Width           =   7485
         _ExtentX        =   13203
         _ExtentY        =   8387
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "USER NAME"
            Object.Width           =   6526
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "PW"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "USER TYPE"
            Object.Width           =   6526
         EndProperty
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   150
         X2              =   6870
         Y1              =   720
         Y2              =   720
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "MANAGE USER ACCOUNT"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   210
         TabIndex        =   1
         Top             =   360
         Width           =   3315
      End
   End
   Begin VB.Menu mnumanageuser 
      Caption         =   "Manage User"
      Begin VB.Menu mnuedit_user 
         Caption         =   "Edit User"
      End
      Begin VB.Menu mnudelete_user 
         Caption         =   "Delete User"
      End
   End
End
Attribute VB_Name = "frmManageUseraccount"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdAddnew_user_Click()
    edit_user_account = False
    frmNewUser.Show 1
End Sub

Private Sub Form_Load()
Me.Top = 3900
Me.Left = 7000
Call loadAllUsers(lsvuseraccounts)
End Sub

Private Sub lsvuseraccounts_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
        PopupMenu mnumanageuser
    End If
End Sub

Private Sub mnuedit_user_Click()
    edit_user_account = True
    Dim edit_user As New Useraccount
        edit_user.loadUserAccount (lsvuseraccounts.SelectedItem.Text)
        activeEditUsername = lsvuseraccounts.SelectedItem.Text
    With frmNewUser
                    .txtusername.Text = edit_user.username
                    .cboUsertype = edit_user.usertype
                    .txtpassword.Visible = False
                    .Label3.Visible = False
                    .Check2.Visible = False
                    .Show 1
    End With
End Sub

