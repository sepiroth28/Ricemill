VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmEvaluate_per_partida 
   BackColor       =   &H00000080&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5760
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5760
   ScaleWidth      =   7035
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame fraDetail 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   5655
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   6885
      Begin VB.Frame Frame3 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Expenses"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   1395
         Left            =   120
         TabIndex        =   1
         Top             =   2160
         Width           =   6555
         Begin MSComctlLib.ListView lsvPartidaExpenses 
            Height          =   705
            Left            =   120
            TabIndex        =   2
            Top             =   240
            Width           =   5865
            _ExtentX        =   10345
            _ExtentY        =   1244
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            FullRowSelect   =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   16777215
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   2
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Description"
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Amount"
               Object.Width           =   4410
            EndProperty
         End
         Begin MSComctlLib.ListView lsvTotalExpenses 
            Height          =   285
            Left            =   120
            TabIndex        =   3
            Top             =   1020
            Width           =   5895
            _ExtentX        =   10398
            _ExtentY        =   503
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   16777215
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   2
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Item"
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "# of kilo"
               Object.Width           =   4410
            EndProperty
         End
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   285
         Left            =   240
         TabIndex        =   4
         Top             =   1860
         Width           =   6315
         _ExtentX        =   11139
         _ExtentY        =   503
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         HideColumnHeaders=   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   16777215
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Item"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "# of kilo"
            Object.Width           =   4410
         EndProperty
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Partida Name:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   12
         Top             =   450
         Width           =   1725
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Total Sales:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   11
         Top             =   1110
         Width           =   1665
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Total Cost of Sale:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   180
         TabIndex        =   10
         Top             =   3990
         Width           =   2265
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Profit:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   180
         TabIndex        =   9
         Top             =   4800
         Width           =   705
      End
      Begin VB.Label lblPartidaname 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   465
         Left            =   2520
         TabIndex        =   8
         Top             =   330
         Width           =   4065
      End
      Begin VB.Label lblTotalincome 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   435
         Left            =   2520
         TabIndex        =   7
         Top             =   1020
         Width           =   4095
      End
      Begin VB.Label lblTotalCapital 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   435
         Left            =   2520
         TabIndex        =   6
         Top             =   3900
         Width           =   4125
      End
      Begin VB.Label lblProfit 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   2520
         TabIndex        =   5
         Top             =   4710
         Width           =   4515
      End
   End
End
Attribute VB_Name = "frmEvaluate_per_partida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
