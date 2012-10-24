VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmNewUser 
   BackColor       =   &H0097C2FD&
   Caption         =   "USERS INFORMATION"
   ClientHeight    =   6540
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6885
   LinkTopic       =   "Form1"
   ScaleHeight     =   6540
   ScaleWidth      =   6885
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   6435
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   6825
      Begin VB.CheckBox Check2 
         BackColor       =   &H80000018&
         Caption         =   "Hide Characters"
         Height          =   315
         Left            =   5250
         TabIndex        =   11
         Top             =   1500
         Value           =   1  'Checked
         Width           =   1485
      End
      Begin VB.CommandButton cmdCreate_user 
         Caption         =   "SAVE USER"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   4200
         TabIndex        =   10
         Top             =   5700
         Width           =   2205
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H80000018&
         Caption         =   "Select All"
         Height          =   315
         Left            =   270
         TabIndex        =   9
         Top             =   5640
         Width           =   1395
      End
      Begin MSComctlLib.ListView lsvPrevileges 
         Height          =   3015
         Left            =   270
         TabIndex        =   7
         Top             =   2610
         Width           =   6165
         _ExtentX        =   10874
         _ExtentY        =   5318
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
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
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   529
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "PREVILEGES"
            Object.Width           =   10178
         EndProperty
      End
      Begin VB.TextBox txtpassword 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Webdings"
            Size            =   12
            Charset         =   2
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         IMEMode         =   3  'DISABLE
         Left            =   2280
         PasswordChar    =   "="
         TabIndex        =   6
         Top             =   1440
         Width           =   2925
      End
      Begin VB.TextBox txtusername 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2280
         TabIndex        =   5
         Top             =   930
         Width           =   2925
      End
      Begin VB.ComboBox cboUsertype 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         ItemData        =   "frmNewUser.frx":0000
         Left            =   2280
         List            =   "frmNewUser.frx":000A
         TabIndex        =   4
         Top             =   420
         Width           =   2955
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Set Previleges"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   300
         TabIndex        =   8
         Top             =   2310
         Width           =   2295
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Default Password:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   240
         TabIndex        =   3
         Top             =   1500
         Width           =   2295
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "User name:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   960
         TabIndex        =   2
         Top             =   990
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "User type:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1110
         TabIndex        =   1
         Top             =   420
         Width           =   1575
      End
   End
End
Attribute VB_Name = "frmNewUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    Dim lst As ListItem
        For Each lst In lsvPrevileges.ListItems
            lst.Checked = Check1.Value
        Next
End Sub

Private Sub Check2_Click()
    If Check2.Value = 1 Then
        With txtpassword
            .PasswordChar = "="
            .Font = "Webdings"
        End With
    Else
        With txtpassword
            .PasswordChar = ""
            .Font = "MS Sans Serif"
        End With
    End If
    
End Sub

Private Sub cmdCreate_user_Click()
    Dim new_user As New Useraccount
        With new_user
                If edit_user_account = True Then
                    .loadUserAccount (activeEditUsername)
                    .username = txtusername.Text
                    .usertype = cboUsertype.Text
                    .editUseracount
                Else
                    .username = txtusername.Text
                    .Password = txtpassword.Text
                    .usertype = cboUsertype.Text
                    If usernameIsExist(txtusername.Text) = True Then
                        MsgBox ("username already taken")
                    Else
                        .insert_user
                    End If
                End If
        End With
        Call savePrevilegesOFThisUser(txtusername, lsvPrevileges)
    MsgBox ("User Account Saved")
End Sub

Private Sub Form_Load()
    If edit_user_account = True Then
         Call loadPrevilegesSetOfThisUserAccount(activeEditUsername, lsvPrevileges)
    Else
        Call loadPrevilegesList(lsvPrevileges)
    End If
End Sub

Private Sub txtusername_Change()
    If txtusername.Text = "" Then
        txtpassword.Text = ""
    Else
        txtpassword.Text = txtusername.Text & "123"
    End If
End Sub


