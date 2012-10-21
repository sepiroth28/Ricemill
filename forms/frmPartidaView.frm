VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmPartidaView 
   Appearance      =   0  'Flat
   BackColor       =   &H00000080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "VIEW PARTIDA"
   ClientHeight    =   10380
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   16965
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10380
   ScaleWidth      =   16965
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   10245
      Left            =   90
      ScaleHeight     =   10215
      ScaleWidth      =   16755
      TabIndex        =   0
      Top             =   60
      Width           =   16785
      Begin VB.CommandButton cmdClosePartidaStockout 
         Caption         =   "&Close Partida Stock out"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   13230
         TabIndex        =   20
         Top             =   960
         Width           =   2685
      End
      Begin VB.CommandButton cmdClosePartida 
         Caption         =   "&Close Partida Stock in"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   5070
         TabIndex        =   19
         Top             =   960
         Width           =   2685
      End
      Begin VB.CommandButton cmdPrint 
         Caption         =   "&Print Stock-in"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5100
         TabIndex        =   18
         Top             =   9270
         Width           =   1935
      End
      Begin VB.CommandButton cmdExpenseDetail 
         Caption         =   "Expenses Detail"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   960
         TabIndex        =   17
         Top             =   9270
         Width           =   2055
      End
      Begin VB.CommandButton cmdAddExpenses 
         Caption         =   "[+] Add Expenses"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   3030
         TabIndex        =   12
         Top             =   9270
         Width           =   2055
      End
      Begin VB.TextBox txtPartidaName 
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
         ForeColor       =   &H00808080&
         Height          =   495
         Left            =   240
         TabIndex        =   9
         Text            =   "Input partida name here"
         Top             =   120
         Visible         =   0   'False
         Width           =   4695
      End
      Begin VB.CommandButton cmdSave 
         Caption         =   "SAVE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   13650
         TabIndex        =   8
         Top             =   8910
         Visible         =   0   'False
         Width           =   2955
      End
      Begin VB.CommandButton cmdAddStockOut 
         Appearance      =   0  'Flat
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   15960
         TabIndex        =   6
         Top             =   960
         Width           =   615
      End
      Begin VB.CommandButton cmdAddStockIn 
         Appearance      =   0  'Flat
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   7800
         TabIndex        =   5
         Top             =   960
         Width           =   615
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H80000018&
         Caption         =   "STOCK OUT"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   8655
         Left            =   8610
         TabIndex        =   3
         Top             =   1380
         Width           =   7995
         Begin MSComctlLib.ListView lsvStockOut 
            Height          =   5865
            Left            =   180
            TabIndex        =   7
            Top             =   300
            Width           =   7635
            _ExtentX        =   13467
            _ExtentY        =   10345
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
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   7
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "id"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "stockout_id"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Item"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   3
               Text            =   "Number of Sack"
               Object.Width           =   2999
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   4
               Text            =   "Unit price"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   5
               Text            =   "Total"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "Date Out"
               Object.Width           =   2540
            EndProperty
         End
         Begin MSComctlLib.ListView lsvStockOutTotal 
            Height          =   315
            Left            =   240
            TabIndex        =   11
            Top             =   6360
            Width           =   7545
            _ExtentX        =   13309
            _ExtentY        =   556
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483624
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
               Text            =   "# of Sack"
               Object.Width           =   2999
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
         Begin MSComctlLib.ListView lsvPercentage 
            Height          =   1125
            Left            =   270
            TabIndex        =   14
            Top             =   6810
            Width           =   4845
            _ExtentX        =   8546
            _ExtentY        =   1984
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   255
            BackColor       =   -2147483624
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
               Text            =   "id"
               Object.Width           =   3263
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "percentage"
               Object.Width           =   2540
            EndProperty
         End
         Begin VB.Label lbltotalpercentage 
            BackStyle       =   0  'Transparent
            Caption         =   "TOTAL PERCENTAGE:"
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
            Height          =   345
            Left            =   270
            TabIndex        =   15
            Top             =   8070
            Width           =   4275
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H80000018&
         Caption         =   "STOCK IN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   7755
         Left            =   240
         TabIndex        =   2
         Top             =   1380
         Width           =   8175
         Begin MSComctlLib.ListView lsvStockIn 
            Height          =   5835
            Left            =   180
            TabIndex        =   4
            Top             =   300
            Width           =   7815
            _ExtentX        =   13785
            _ExtentY        =   10292
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
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   8
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "id"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Date In"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   2
               Text            =   "Provider"
               Object.Width           =   2999
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   3
               Text            =   "No. of Sack(s)"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   4
               Text            =   "No. of Kilo(s)"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   5
               Text            =   "Description"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "Unit Price"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   7
               Text            =   "Amount"
               Object.Width           =   2540
            EndProperty
         End
         Begin MSComctlLib.ListView lsvStockInTotal 
            Height          =   285
            Left            =   240
            TabIndex        =   10
            Top             =   6360
            Width           =   7695
            _ExtentX        =   13573
            _ExtentY        =   503
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483624
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
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "# of kilo"
               Object.Width           =   4410
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
         Begin MSComctlLib.ListView lsvTotalExpenses 
            Height          =   285
            Left            =   240
            TabIndex        =   13
            Top             =   6960
            Width           =   7695
            _ExtentX        =   13573
            _ExtentY        =   503
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483624
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
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "# of kilo"
               Object.Width           =   4410
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
         Begin MSComctlLib.ListView ListView1 
            Height          =   285
            Left            =   240
            TabIndex        =   16
            Top             =   6660
            Width           =   7695
            _ExtentX        =   13573
            _ExtentY        =   503
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483624
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
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "# of kilo"
               Object.Width           =   4410
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
      End
      Begin VB.Label lblPartidaName 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "VIEW PARTIDA ACTIVITIES"
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
         TabIndex        =   1
         Top             =   120
         Width           =   3480
      End
   End
   Begin VB.Menu mnumanagepartida_prod 
      Caption         =   "Manage Partida Product"
      Begin VB.Menu mnuEdit 
         Caption         =   "Edit"
      End
      Begin VB.Menu mnuDelete 
         Caption         =   "Delete"
      End
   End
End
Attribute VB_Name = "frmPartidaView"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim edit_partida As New Partida
Dim activeModifyProduct As String

Sub renderNewPartida()
    txtPartidaname.Visible = True
    cmdSave.Visible = True
    With Me
    .cmdAddStockIn.Enabled = True
    .cmdExpenseDetail.Enabled = False
    .cmdAddExpenses.Enabled = False
    .cmdAddStockOut.Enabled = False
    End With
End Sub

Private Sub cmdAddExpenses_Click()
frmExpenses.Show 1
End Sub

Private Sub cmdAddStockIn_Click()
If txtPartidaname.Visible = True Then
    MsgBox ("Save First " & txtPartidaname.Text & " partida")
Else
    stockin_product_edit_mode = False
    Set activeform = frmStockIn
    frmStockIn.Show 1
End If
End Sub

Private Sub cmdAddStockOut_Click()
stockout_product_edit_mode = False
Set activeform = frmStockOut
frmStockOut.Show 1
End Sub

Private Sub cmdClosepartida_Click()
Dim toclosepartidaStockin As New Partida
toclosepartidaStockin.load_partida (activePartidaId)
Call closepartida(activePartidaId, toclosepartidaStockin.partida_status)
Call controlsOfThisPartidaStatus
End Sub

Private Sub cmdExpenseDetail_Click()
frmExpensesdetail.Show 1
End Sub

Private Sub cmdPrint_Click()
Dim newPartida As New Partida
newPartida.load_partida (activePartidaId)
Dim toprintstockin As New StockIn
toprintstockin.printstockin (newPartida.partida_name)

End Sub

Private Sub cmdSave_Click()
Call savePartida
Unload Me
Me.Show 1
End Sub

Private Sub cmdClosePartidaStockout_Click()
Dim toclosepartidaStockout As New Partida
toclosepartidaStockout.load_partida (activePartidaId)
Call closepartidaStockout(activePartidaId, toclosepartidaStockout.stockout_status)
Call controlsOfThisPartidaStatus
End Sub

Private Sub Form_Load()
    Me.Top = 700
    Me.Left = 500
If newPartida Then
    Call renderNewPartida
Else

    Call controlsOfThisPartidaStatus
    
        edit_partida.load_partida (activePartidaId)
        lblPartidaName.Caption = edit_partida.partida_name & " Activities"
    Call totalexpenses(activePartidaId, lsvtotalExpenses)
    Call loadStockinListOnThisPartida(activePartidaId, lsvStockIn)
    Call loadStockInTotals(activePartidaId, lsvStockInTotal, ListView1)
    Call loadStockOutListOnThisPartida(activePartidaId, lsvStockOut)
    Call loadStockOutTotals(activePartidaId, lsvStockOutTotal)
'    Call get_percentage(lblpercentage)
    Call get_output_product_percentage(lsvPercentage, activePartidaId)
    lbltotalpercentage = lbltotalpercentage.Caption & updateTotalPercentage() & "%"
    End If
End Sub

Private Sub lsvStockIn_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
     If Button = 2 Then
    activeModifyProduct = "stockinproduct"
        PopupMenu mnumanagepartida_prod
    End If
End Sub

Private Sub lsvStockOut_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
    activeModifyProduct = "stockoutproduct"
        PopupMenu mnumanagepartida_prod
    End If
End Sub

Private Sub mnuDelete_Click()
Dim confirm As Byte
    confirm = MsgBox("Are you sure you want to delete this " & activeModifyProduct & "?", vbQuestion + vbYesNo)
    
    If confirm = vbYes Then
    If activeModifyProduct = "stockoutproduct" Then
        Dim deletestockout_prod As New StockOut
            deletestockout_prod.load_stockout (lsvStockOut.SelectedItem.SubItems(1))
            deletestockout_prod.delete_stockout
    Else
        Dim deletestockin_prod As New StockIn
            deletestockin_prod.load_stockin (lsvStockIn.SelectedItem.Text)
            deletestockin_prod.delete_stockin
    End If
    End If
End Sub

Private Sub mnuedit_Click()
  If activeModifyProduct = "stockoutproduct" Then
    stockout_product_edit_mode = True
    activestockoutID = lsvStockOut.SelectedItem.SubItems(1)
    Call editstockoutproduct(lsvStockOut.SelectedItem.SubItems(1))
    
  Else
    stockin_product_edit_mode = True
    activestockinID = lsvStockIn.SelectedItem.Text
    Call editstockinProduct(lsvStockIn.SelectedItem.Text)
  End If
End Sub

Private Sub txtPartidaName_Click()
If txtPartidaname.Text = "Input partida name here" Then
    txtPartidaname.Text = ""
    txtPartidaname.ForeColor = normalColor
End If
End Sub

Sub controlsOfThisPartidaStatus()
Dim loadinfo_of_this_partida As New Partida
    loadinfo_of_this_partida.load_partida (activePartidaId)
    If loadinfo_of_this_partida.partida_status = 1 And loadinfo_of_this_partida.stockout_status = 1 Then
        cmdAddStockIn.Enabled = True
        cmdAddStockOut.Enabled = True
    ElseIf loadinfo_of_this_partida.partida_status = 1 And loadinfo_of_this_partida.stockout_status = 0 Then
        cmdAddStockIn.Enabled = True
        cmdAddStockOut.Enabled = False
    ElseIf loadinfo_of_this_partida.partida_status = 0 And loadinfo_of_this_partida.stockout_status = 1 Then
        cmdAddStockIn.Enabled = False
        cmdAddStockOut.Enabled = True
    Else
        cmdAddStockIn.Enabled = False
        cmdAddStockOut.Enabled = False
    End If
End Sub
