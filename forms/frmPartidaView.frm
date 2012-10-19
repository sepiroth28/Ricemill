VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmPartidaView 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   Caption         =   "VIEW PARTIDA"
   ClientHeight    =   10425
   ClientLeft      =   225
   ClientTop       =   555
   ClientWidth     =   16965
   LinkTopic       =   "Form1"
   ScaleHeight     =   10425
   ScaleWidth      =   16965
   StartUpPosition =   3  'Windows Default
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
      Height          =   525
      Left            =   13230
      TabIndex        =   17
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
      Height          =   525
      Left            =   5070
      TabIndex        =   16
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
      Left            =   6360
      TabIndex        =   15
      Top             =   9630
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
      Left            =   2190
      TabIndex        =   14
      Top             =   9630
      Width           =   2055
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C7FEF3&
      ForeColor       =   &H80000008&
      Height          =   10455
      Left            =   0
      ScaleHeight     =   10425
      ScaleWidth      =   16995
      TabIndex        =   0
      Top             =   0
      Width           =   17025
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
         Left            =   4260
         TabIndex        =   12
         Top             =   9600
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
         Top             =   9180
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
         Top             =   990
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
         BackColor       =   &H00C7FEF3&
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
         Height          =   8895
         Left            =   8610
         TabIndex        =   3
         Top             =   1380
         Width           =   8175
         Begin MSComctlLib.ListView lsvStockOut 
            Height          =   5865
            Left            =   180
            TabIndex        =   7
            Top             =   300
            Width           =   7815
            _ExtentX        =   13785
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
               Text            =   "Number of Sack"
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
               Text            =   "Date Out"
               Object.Width           =   2540
            EndProperty
         End
         Begin MSComctlLib.ListView lsvStockOutTotal 
            Height          =   315
            Left            =   240
            TabIndex        =   11
            Top             =   6360
            Width           =   7755
            _ExtentX        =   13679
            _ExtentY        =   556
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
            Left            =   240
            TabIndex        =   18
            Top             =   6960
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
            NumItems        =   2
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "id"
               Object.Width           =   2469
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
            TabIndex        =   19
            Top             =   8340
            Width           =   4275
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00C7FEF3&
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
         Height          =   8055
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
            Height          =   255
            Left            =   240
            TabIndex        =   10
            Top             =   7200
            Width           =   7695
            _ExtentX        =   13573
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
         Begin MSComctlLib.ListView lsvTotalExpenses 
            Height          =   255
            Left            =   240
            TabIndex        =   13
            Top             =   7620
            Width           =   7695
            _ExtentX        =   13573
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
               Object.Width           =   3528
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   2
               Text            =   "# of kilo"
               Object.Width           =   2011
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
End
Attribute VB_Name = "frmPartidaView"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim edit_partida As New Partida
Sub renderNewPartida()
    txtPartidaName.Visible = True
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
Set activeform = frmStockIn
frmStockIn.Show 1
End Sub

Private Sub cmdAddStockOut_Click()
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
End Sub

Private Sub cmdClosePartidaStockout_Click()
Dim toclosepartidaStockout As New Partida
toclosepartidaStockout.load_partida (activePartidaId)
Call closepartidaStockout(activePartidaId, toclosepartidaStockout.stockout_status)
Call controlsOfThisPartidaStatus
End Sub

Private Sub Form_Load()

If newPartida Then
    Call renderNewPartida
Else

    Call controlsOfThisPartidaStatus
    
        edit_partida.load_partida (activePartidaId)
        lblPartidaName.Caption = edit_partida.partida_name & " Activities"
    Call totalexpenses(activePartidaId, lsvTotalExpenses)
    Call loadStockinListOnThisPartida(activePartidaId, lsvStockIn)
    Call loadStockInTotals(activePartidaId, lsvStockInTotal)
    Call loadStockOutListOnThisPartida(activePartidaId, lsvStockOut)
    Call loadStockOutTotals(activePartidaId, lsvStockOutTotal)
'    Call get_percentage(lblpercentage)
    Call get_output_product_percentage(lsvPercentage, activePartidaId)
    lbltotalpercentage = lbltotalpercentage.Caption & updateTotalPercentage() & "%"
    End If

End Sub


Private Sub txtPartidaName_Click()
If txtPartidaName.Text = "Input partida name here" Then
    txtPartidaName.Text = ""
    txtPartidaName.ForeColor = normalColor
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
