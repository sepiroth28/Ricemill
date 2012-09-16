VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmStockIn 
   Appearance      =   0  'Flat
   BackColor       =   &H0097C2FD&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Stock-in"
   ClientHeight    =   7245
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7230
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7245
   ScaleWidth      =   7230
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   7125
      Left            =   60
      ScaleHeight     =   7095
      ScaleWidth      =   7065
      TabIndex        =   0
      Top             =   60
      Width           =   7095
      Begin VB.TextBox txtNum_of_sack 
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
         Left            =   270
         TabIndex        =   20
         Top             =   5100
         Width           =   1575
      End
      Begin VB.CommandButton Command2 
         Caption         =   "..."
         Height          =   555
         Left            =   6180
         TabIndex        =   19
         Top             =   1590
         Width           =   675
      End
      Begin MSComctlLib.ListView lsvProviderlist 
         Height          =   2265
         Left            =   240
         TabIndex        =   18
         Top             =   2160
         Visible         =   0   'False
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   3995
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
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Name"
            Object.Width           =   10231
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "address"
            Object.Width           =   0
         EndProperty
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
         Left            =   240
         TabIndex        =   16
         Top             =   1590
         Width           =   5895
      End
      Begin VB.TextBox txtdescription 
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
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   14
         Top             =   3720
         Width           =   5895
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
         Left            =   4920
         TabIndex        =   13
         Top             =   6090
         Width           =   1995
      End
      Begin VB.CommandButton Command1 
         Caption         =   "..."
         Height          =   375
         Left            =   6420
         TabIndex        =   12
         Top             =   540
         Width           =   435
      End
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "..."
         Height          =   555
         Left            =   6180
         TabIndex        =   10
         Top             =   2640
         Width           =   675
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
         Left            =   5130
         TabIndex        =   9
         Top             =   5100
         Width           =   1515
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
         Left            =   3510
         TabIndex        =   7
         Top             =   5100
         Width           =   1575
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
         Left            =   1890
         TabIndex        =   5
         Top             =   5100
         Width           =   1575
      End
      Begin VB.TextBox txtitem 
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
         TabIndex        =   3
         Text            =   "Humay"
         Top             =   2640
         Width           =   5895
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No.of Sack(s)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   270
         TabIndex        =   21
         Top             =   4830
         Width           =   1425
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Provider"
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
         TabIndex        =   17
         Top             =   1230
         Width           =   990
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Description"
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
         TabIndex        =   15
         Top             =   3360
         Width           =   1380
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   180
         X2              =   6900
         Y1              =   420
         Y2              =   420
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   180
         X2              =   6900
         Y1              =   5940
         Y2              =   5940
      End
      Begin VB.Label lblDate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Date"
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
         Left            =   5655
         TabIndex        =   11
         Top             =   600
         Width           =   600
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Total Amount"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5130
         TabIndex        =   8
         Top             =   4830
         Width           =   1380
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unit Price"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3510
         TabIndex        =   6
         Top             =   4830
         Width           =   1020
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Qty In(kg)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1950
         TabIndex        =   4
         Top             =   4800
         Width           =   1005
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
         TabIndex        =   2
         Top             =   2280
         Width           =   555
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "STOCKIN INFO"
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
         Top             =   60
         Width           =   1860
      End
   End
End
Attribute VB_Name = "frmStockIn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim id_of_item As Integer
Dim active_stockin_provider As New provider

Private Sub cmdSave_Click()

If newPartida = True Then
    Call savePartida
    Call getlastpartida_id(activePartidaId)
End If
Call get_item_id(txtItem.Text)
Dim stock_in As New StockIn
Dim newprovider As New provider
With stock_in
    .item_id = itemID
    .qty_in = Val(txtQty.Text)
    .unit_price = Val(txtPrice.Text)
    .total_amount = Val(txtAmount.Text)
    .Num_of_sack = txtNum_of_sack.Text
    .received_by = "admin"
    .description = txtDescription
    .date_in = Format(lblDate.Caption, "yyyy-mm-dd")
    .save_stockin
End With
active_stockin_provider.insertPartidaProvider (getlastId)

MsgBox "Successfully Stock in", vbInformation, "Stockin"

Call loadStockinListOnThisPartida(activePartidaId, frmPartidaView.lsvStockIn)
Call loadStockInTotals(activePartidaId, frmPartidaView.lsvStockInTotal)
Call clearfield
End Sub

Private Sub Command1_Click()
Set activedate = lblDate
frmCalendar.Show 1
End Sub

Private Sub Command2_Click()
Call toggle_listview(lsvProviderlist)
End Sub

Private Sub Form_Load()
Me.Top = frmPartidaView.Top + 2500
Me.Left = frmPartidaView.Left + 700
lblDate.Caption = FormatDateTime(Date, vbShortDate)
Call loadProviderListInThisListview(lsvProviderlist)
End Sub

Private Sub lsvProviderlist_Click()
active_stockin_provider.loadProvider (lsvProviderlist.SelectedItem.Text)
txtProvider.Text = lsvProviderlist.SelectedItem.SubItems(1)
Call toggle_listview(lsvProviderlist)
End Sub

Private Sub txtPrice_Change()
Call get_total_amount(txtQty, txtPrice, txtAmount)
End Sub

Private Sub txtQty_Change()
Call get_total_amount(txtQty, txtPrice, txtAmount)
End Sub

Private Sub clearfield()
txtAmount.Text = ""
With txtQty
.Text = ""
.SetFocus
End With
End Sub
