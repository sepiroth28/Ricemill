VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmStockOut 
   BackColor       =   &H0097C2FD&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stock Out"
   ClientHeight    =   5055
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   7080
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   4935
      Left            =   60
      ScaleHeight     =   4905
      ScaleWidth      =   6915
      TabIndex        =   0
      Top             =   60
      Width           =   6945
      Begin MSComctlLib.ListView lsvoutputProductlist 
         Height          =   1395
         Left            =   240
         TabIndex        =   14
         Top             =   2250
         Visible         =   0   'False
         Width           =   5655
         _ExtentX        =   9975
         _ExtentY        =   2461
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         HideColumnHeaders=   -1  'True
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
         NumItems        =   12
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "partida_id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "raw_item_id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "raw_product_id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "output_product_id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "item_id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "item_code"
            Object.Width           =   7056
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "description"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "unit_price"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "unit_of_measure"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   9
            Text            =   "status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   10
            Text            =   "type"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   11
            Text            =   "is_include_in_evaluation"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.TextBox txtItem 
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
         Left            =   240
         TabIndex        =   7
         Top             =   1680
         Width           =   5655
      End
      Begin VB.TextBox txtQty 
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
         Left            =   240
         TabIndex        =   6
         Top             =   2940
         Width           =   1875
      End
      Begin VB.TextBox txtPrice 
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
         Left            =   2280
         TabIndex        =   5
         Top             =   2940
         Width           =   1875
      End
      Begin VB.TextBox txtAmount 
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
         Left            =   4320
         TabIndex        =   4
         Top             =   2940
         Width           =   1575
      End
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "..."
         Height          =   555
         Left            =   5970
         TabIndex        =   3
         Top             =   1680
         Width           =   675
      End
      Begin VB.CommandButton Command1 
         Caption         =   "..."
         Height          =   375
         Left            =   6180
         TabIndex        =   2
         Top             =   540
         Width           =   435
      End
      Begin VB.CommandButton cmdSave 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   4650
         TabIndex        =   1
         Top             =   3990
         Width           =   1995
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "STOCKOUT INFO"
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
         TabIndex        =   13
         Top             =   60
         Width           =   2130
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Item"
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
         TabIndex        =   12
         Top             =   1320
         Width           =   555
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Qty Out(sack)"
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
         TabIndex        =   11
         Top             =   2580
         Width           =   1665
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unit Price"
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
         Left            =   2280
         TabIndex        =   10
         Top             =   2580
         Width           =   1185
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Total Amount"
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
         Left            =   4320
         TabIndex        =   9
         Top             =   2580
         Width           =   1620
      End
      Begin VB.Label lblDate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   300
         Left            =   5460
         TabIndex        =   8
         Top             =   600
         Width           =   555
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   120
         X2              =   6840
         Y1              =   3810
         Y2              =   3810
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   180
         X2              =   6900
         Y1              =   420
         Y2              =   420
      End
   End
End
Attribute VB_Name = "frmStockOut"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim item_id As Integer
Dim ref_no As String

Private Sub cmdBrowse_Click()
    Call toggle_listview(lsvoutputProductlist)
End Sub

Private Sub cmdsave_Click()
Dim stock_out As New StockOut
Call get_item_id(txtItem.Text)
With stock_out
    If stockout_product_edit_mode = True Then
    .id = activestockoutID
    End If
    .item_id = itemID
    .qty_out = Val(txtQty.Text)
    .unit_price = Val(txtPrice.Text)
    .total_amount = Val(txtAmount.Text)
    .received_by = activeUser.username
    .date_out = Format(lblDate.Caption, "yyyy-mm-dd")
    If stockout_product_edit_mode = True Then
    .editStockout
    MsgBox "Successfully Updated stockout", vbInformation, "StockOut"
    Else
    .save_stockout
    MsgBox "Successfully Stock Out", vbInformation, "StockOut"
    End If
End With

Call loadStockOutListOnThisPartida(activePartidaId, frmPartidaView.lsvStockOut)
Call loadStockOutTotals(activePartidaId, frmPartidaView.lsvStockOutTotal)
'Call get_percentage(frmPartidaView.lblpercentage)
Call get_output_product_percentage(frmPartidaView.lsvPercentage, activePartidaId)
    frmPartidaView.lbltotalpercentage.Caption = "TOTAL PERCENTAGE:" & updateTotalPercentage() & "%"
End Sub

Private Sub Command1_Click()
Set activedate = lblDate
frmCalendar.Show 1
End Sub
Private Sub Form_Load()
Me.Top = frmPartidaView.Top + 2500
Me.Left = frmPartidaView.Left + 9300
ref_no = settedSI
lblDate.Caption = FormatDateTime(Date, vbShortDate)
Call loadoutputProductOfThisPartida(lsvoutputProductlist, activePartidaId)
End Sub

Private Sub lsvoutputProductlist_Click()
    txtItem.Text = lsvoutputProductlist.SelectedItem.SubItems(5)
    txtPrice.Text = lsvoutputProductlist.SelectedItem.SubItems(7)
    Call toggle_listview(lsvoutputProductlist)
End Sub

Private Sub txtPrice_Change()
Call get_total_amount(txtQty, txtPrice, txtAmount)
End Sub
Private Sub txtQty_Change()
Call get_total_amount(txtQty, txtPrice, txtAmount)
End Sub

Function settedSI() As String
    Dim sql As String
    Dim temp As String
    Dim rs As New ADODB.Recordset
    Dim x As Integer
    
        sql = "SELECT * FROM `stock_in_reference`"
    Set rs = db2.execute(sql)
        x = rs.Fields(0).Value
        
    temp = "SI-" & String((7 - Len(x)), "0") & x
    settedSI = temp
End Function
