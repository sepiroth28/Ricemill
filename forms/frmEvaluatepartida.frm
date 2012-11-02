VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmEvaluatepartida 
   BackColor       =   &H00000080&
   Caption         =   "PARTIDA EVALUATION"
   ClientHeight    =   7725
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12045
   LinkTopic       =   "Form1"
   ScaleHeight     =   7725
   ScaleWidth      =   12045
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Caption         =   "SELECT PARTIDA TO EVALUATE"
      Height          =   7515
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   11835
      Begin VB.Frame fraDetail 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Evaluation Detail"
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
         Left            =   4800
         TabIndex        =   2
         Top             =   540
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
            TabIndex        =   3
            Top             =   2640
            Width           =   6555
            Begin MSComctlLib.ListView lsvPartidaExpenses 
               Height          =   705
               Left            =   120
               TabIndex        =   4
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
               TabIndex        =   5
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
            TabIndex        =   6
            Top             =   2340
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
            TabIndex        =   14
            Top             =   4770
            Width           =   4515
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
            TabIndex        =   13
            Top             =   4200
            Width           =   4125
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
            TabIndex        =   12
            Top             =   1560
            Width           =   4095
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
            TabIndex        =   11
            Top             =   690
            Width           =   4065
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
            TabIndex        =   10
            Top             =   4860
            Width           =   705
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
            TabIndex        =   9
            Top             =   4290
            Width           =   2265
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
            TabIndex        =   8
            Top             =   1650
            Width           =   1665
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
            TabIndex        =   7
            Top             =   810
            Width           =   1725
         End
      End
      Begin VB.CommandButton cmdEvaluate 
         Caption         =   "Evaluate Partida"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   915
         Left            =   180
         TabIndex        =   1
         Top             =   6240
         Width           =   4515
      End
      Begin MSComctlLib.ListView lsvpartidalist 
         Height          =   5655
         Left            =   180
         TabIndex        =   15
         Top             =   540
         Width           =   4515
         _ExtentX        =   7964
         _ExtentY        =   9975
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         HotTracking     =   -1  'True
         HoverSelection  =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   7
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "ID"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "PARTIDA NAME"
            Object.Width           =   7673
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "STATUS"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "DESCRIPTION"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "CREATED ON"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "CREATED BY"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "STOCKOU STATUS"
            Object.Width           =   0
         EndProperty
      End
   End
End
Attribute VB_Name = "frmEvaluatepartida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdEvaluate_Click()
    partida_id_toevaluate = lsvpartidalist.SelectedItem.Text
    Call showEvaluation(lblPartidaname, lblTotalincome, lblTotalCapital, lblProfit, ListView1, lsvPartidaExpenses, lsvTotalExpenses)
End Sub
Private Sub Form_Load()
Me.Top = 3800
Me.Left = 5600
Call loadPartidalistMainwindow(lsvpartidalist)
cmdEvaluate.Enabled = False
invisibleDetail
visibleDetail
End Sub

Private Sub lsvpartidalist_Click()
cmdEvaluate.Enabled = True
End Sub


Private Sub invisibleDetail()
fraDetail.Visible = False
End Sub

Private Sub visibleDetail()
fraDetail.Visible = True
End Sub

