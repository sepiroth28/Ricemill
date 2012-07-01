VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmExpensesdetail 
   Caption         =   "Form1"
   ClientHeight    =   4680
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8250
   LinkTopic       =   "Form1"
   ScaleHeight     =   4680
   ScaleWidth      =   8250
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView lsvExpenses 
      Height          =   3315
      Left            =   180
      TabIndex        =   2
      Top             =   750
      Width           =   7845
      _ExtentX        =   13838
      _ExtentY        =   5847
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
      NumItems        =   0
   End
   Begin MSComctlLib.ListView lsvtotalExpenses 
      Height          =   255
      Left            =   210
      TabIndex        =   1
      Top             =   4110
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   450
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      HideColumnHeaders=   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   13106931
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
      NumItems        =   6
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "id"
         Object.Width           =   0
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Item"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   2
         Text            =   "# of kilo"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   3
         Text            =   "Unit price"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   4
         Text            =   "Total"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "date in"
         Object.Width           =   0
      EndProperty
   End
   Begin VB.Line Line1 
      X1              =   180
      X2              =   6420
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label lblPartidaName 
      BackStyle       =   0  'Transparent
      Caption         =   "Partida Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   180
      TabIndex        =   0
      Top             =   120
      Width           =   6195
   End
End
Attribute VB_Name = "frmExpensesdetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newPartida As New Partida
Private Sub Form_Load()
Me.BackColor = &HC7FEF3
newPartida.load_partida (activePartidaId)
lblPartidaName.Caption = newPartida.partida_name & "Expenses"
'Call loadExpensesOnthisPartida(activePartidaId, lsvExpenses)
Call totalexpenses(activePartidaId, lsvtotalExpenses)
End Sub
