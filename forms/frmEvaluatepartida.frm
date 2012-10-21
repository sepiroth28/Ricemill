VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmEvaluatepartida 
   BackColor       =   &H00000080&
   Caption         =   "PARTIDA EVALUATION"
   ClientHeight    =   6570
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10665
   LinkTopic       =   "Form1"
   ScaleHeight     =   6570
   ScaleWidth      =   10665
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   6435
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   10545
      Begin VB.CommandButton cmdEvaluate 
         Caption         =   "Evaluate Partida"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   795
         Left            =   270
         TabIndex        =   14
         Top             =   5130
         Width           =   3795
      End
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
         Height          =   5595
         Left            =   4260
         TabIndex        =   1
         Top             =   360
         Width           =   6045
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
            Left            =   1860
            TabIndex        =   13
            Top             =   4530
            Width           =   4095
         End
         Begin VB.Label lblexpenses 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   1860
            TabIndex        =   12
            Top             =   3870
            Width           =   2805
         End
         Begin VB.Label lblcapital 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   1830
            TabIndex        =   11
            Top             =   3510
            Width           =   2835
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
            Left            =   1860
            TabIndex        =   10
            Top             =   2880
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
            Left            =   1860
            TabIndex        =   9
            Top             =   1860
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
            Left            =   1860
            TabIndex        =   8
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
            Left            =   1020
            TabIndex        =   7
            Top             =   4620
            Width           =   705
         End
         Begin VB.Label Label7 
            BackStyle       =   0  'Transparent
            Caption         =   "Expenses -"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   600
            TabIndex        =   6
            Top             =   3870
            Width           =   1245
         End
         Begin VB.Label Label6 
            BackStyle       =   0  'Transparent
            Caption         =   "Capital -"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   900
            TabIndex        =   5
            Top             =   3510
            Width           =   975
         End
         Begin VB.Label Label5 
            BackStyle       =   0  'Transparent
            Caption         =   "Total Capital:"
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
            TabIndex        =   4
            Top             =   2970
            Width           =   1605
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Caption         =   "Total Income:"
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
            TabIndex        =   3
            Top             =   1950
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
            TabIndex        =   2
            Top             =   810
            Width           =   1725
         End
      End
      Begin MSComctlLib.ListView lsvpartidalist 
         Height          =   4095
         Left            =   240
         TabIndex        =   15
         Top             =   900
         Width           =   3825
         _ExtentX        =   6747
         _ExtentY        =   7223
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
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
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "name"
            Object.Width           =   6703
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Stockout_status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "created at"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "created by"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Select Partida to Evaluate"
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
         Height          =   345
         Left            =   300
         TabIndex        =   16
         Top             =   420
         Width           =   3255
      End
   End
End
Attribute VB_Name = "frmEvaluatepartida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim evaluatepartida As New Partida

Private Sub cmdEvaluate_Click()
visibleDetail
partida_id_toevaluate = lsvpartidalist.SelectedItem.Text
evaluatepartida.load_partida_evaluation (partida_id_toevaluate)
lblPartidaName.Caption = evaluatepartida.partida_name_toevaluate
lblTotalincome.Caption = "Php." & FormatNumber(evaluatepartida.partida_totalgross, 2)
lblTotalCapital.Caption = "Php." & FormatNumber(evaluatepartida.partida_totalcapital + evaluatepartida.partida_totalexpenses, 2)
lblcapital.Caption = evaluatepartida.partida_totalcapital
lblexpenses.Caption = evaluatepartida.partida_totalexpenses
If evaluatepartida.partida_profit < 0 Then
    With lblProfit
    .ForeColor = &HFF&
    .Caption = "need to recover (Php." & Replace(FormatNumber(evaluatepartida.partida_profit, 2), "-", "") & ")"
    End With
Else
    With lblProfit
        .ForeColor = vbBlack
        .Caption = "Php." & FormatNumber(evaluatepartida.partida_profit, 2)
    End With
End If
End Sub
Private Sub Form_Load()
Me.Top = 3800
Me.Left = 5600
Call loadPartidaList(lsvpartidalist)
cmdEvaluate.Enabled = False
invisibleDetail
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
