VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManageProvider 
   Caption         =   "Manage Provider"
   ClientHeight    =   7905
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   9210
   LinkTopic       =   "Form1"
   ScaleHeight     =   7905
   ScaleWidth      =   9210
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   7965
      Left            =   30
      ScaleHeight     =   7935
      ScaleWidth      =   9255
      TabIndex        =   0
      Top             =   0
      Width           =   9285
      Begin VB.CommandButton cmdNewProvider 
         Caption         =   "Add New Proivder"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   6600
         TabIndex        =   5
         Top             =   1500
         Width           =   2385
      End
      Begin VB.TextBox txtProvider 
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
         Height          =   555
         Left            =   210
         TabIndex        =   1
         Top             =   1410
         Width           =   3645
      End
      Begin MSComctlLib.ListView lsvProviderlist 
         Height          =   5595
         Left            =   210
         TabIndex        =   4
         Top             =   2130
         Width           =   8805
         _ExtentX        =   15531
         _ExtentY        =   9869
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "No."
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Provider"
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Address"
            Object.Width           =   8819
         EndProperty
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "PROVIDER LIST"
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
         Left            =   240
         TabIndex        =   3
         Top             =   60
         Width           =   2055
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   180
         X2              =   6900
         Y1              =   420
         Y2              =   420
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Search Provider Name"
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
         TabIndex        =   2
         Top             =   1050
         Width           =   2685
      End
   End
   Begin VB.Menu mnuProvider 
      Caption         =   "Provider menu"
      Begin VB.Menu mnuNew_provider 
         Caption         =   "New Provider"
      End
      Begin VB.Menu mnuEdit_provider 
         Caption         =   "Edit Provider"
      End
      Begin VB.Menu mnuDelete_provider 
         Caption         =   "Delete Provider"
      End
   End
End
Attribute VB_Name = "frmManageProvider"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdNewProvider_Click()
frmProvider.Show 1
End Sub

