VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmEvaluatepartida 
   BackColor       =   &H80000018&
   Caption         =   "Partida Evaluation"
   ClientHeight    =   6195
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12015
   LinkTopic       =   "Form1"
   ScaleHeight     =   6195
   ScaleWidth      =   12015
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fraDetail 
      BackColor       =   &H8000000B&
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
      Left            =   4320
      TabIndex        =   3
      Top             =   360
      Width           =   7455
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
         TabIndex        =   15
         Top             =   810
         Width           =   1725
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
         TabIndex        =   14
         Top             =   1950
         Width           =   1665
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
         TabIndex        =   13
         Top             =   2970
         Width           =   1605
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
         TabIndex        =   12
         Top             =   3510
         Width           =   975
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
         TabIndex        =   11
         Top             =   3870
         Width           =   1245
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
         TabIndex        =   10
         Top             =   4620
         Width           =   705
      End
      Begin VB.Label lblPartidaname 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   19.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   1860
         TabIndex        =   9
         Top             =   750
         Width           =   5265
      End
      Begin VB.Label lblTotalincome 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   19.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   1860
         TabIndex        =   8
         Top             =   1890
         Width           =   5295
      End
      Begin VB.Label lblTotalCapital 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   19.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   1860
         TabIndex        =   7
         Top             =   2940
         Width           =   5325
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
         TabIndex        =   6
         Top             =   3510
         Width           =   2835
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
         TabIndex        =   5
         Top             =   3870
         Width           =   2805
      End
      Begin VB.Label lblProfit 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   19.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   465
         Left            =   1860
         TabIndex        =   4
         Top             =   4530
         Width           =   5415
      End
   End
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
      Left            =   60
      TabIndex        =   2
      Top             =   5160
      Width           =   3855
   End
   Begin MSComctlLib.ListView lsvpartidalist 
      Height          =   4095
      Left            =   30
      TabIndex        =   0
      Top             =   960
      Width           =   3885
      _ExtentX        =   6853
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
      Appearance      =   1
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
      Left            =   90
      TabIndex        =   1
      Top             =   450
      Width           =   3255
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
lblTotalincome.Caption = evaluatepartida.partida_totalgross
lblTotalCapital.Caption = evaluatepartida.partida_totalcapital + evaluatepartida.partida_totalexpenses
lblcapital.Caption = evaluatepartida.partida_totalcapital
lblexpenses.Caption = evaluatepartida.partida_totalexpenses
If evaluatepartida.partida_profit < 0 Then
    With lblProfit
    .ForeColor = &HFF&
    .Caption = "need to recover (" + Replace(evaluatepartida.partida_profit, "-", "") + ")"
    End With
Else
    lblProfit.Caption = evaluatepartida.partida_profit
End If
End Sub
Private Sub Form_Load()
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
