VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmProduct 
   BackColor       =   &H00000080&
   Caption         =   "MANAGE PRODUCT"
   ClientHeight    =   6795
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   9645
   LinkTopic       =   "Form1"
   ScaleHeight     =   6795
   ScaleWidth      =   9645
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   6705
      Left            =   60
      ScaleHeight     =   6675
      ScaleWidth      =   9525
      TabIndex        =   0
      Top             =   60
      Width           =   9555
      Begin VB.ComboBox cbocategory 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "frmProduct.frx":0000
         Left            =   6930
         List            =   "frmProduct.frx":000D
         TabIndex        =   4
         Text            =   "all"
         Top             =   210
         Width           =   2385
      End
      Begin VB.CommandButton cmdAddnew 
         Caption         =   "ADD NEW"
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
         Left            =   6750
         TabIndex        =   1
         Top             =   5730
         Width           =   2535
      End
      Begin MSComctlLib.ListView lsvProduct 
         Height          =   4995
         Left            =   180
         TabIndex        =   2
         Top             =   570
         Width           =   9135
         _ExtentX        =   16113
         _ExtentY        =   8811
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
            Text            =   "PRODUCT CODE"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "DESCRIPTION"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "UNIT PRICE"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "UNIT OF MEASURE"
            Object.Width           =   4586
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "STATUS"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "TYPE"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "CATEGORY"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5610
         TabIndex        =   5
         Top             =   270
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "PRODUCT LIST"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   180
         TabIndex        =   3
         Top             =   180
         Width           =   2775
      End
   End
   Begin VB.Menu mnuMangeproduct 
      Caption         =   "Manage product"
      Begin VB.Menu mnuedit 
         Caption         =   "Edit"
      End
      Begin VB.Menu mnudelete 
         Caption         =   "Delete"
      End
   End
End
Attribute VB_Name = "frmProduct"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cbocategory_Click()
    Call loadAllProducts(lsvProduct, cbocategory)
End Sub

Private Sub cmdAddnew_Click()
    item_editmode = False
    frmManageItem.Show 1
End Sub

Private Sub Form_Load()
    Me.Top = 3900
    Me.Left = 6100
    Call loadAllProducts(lsvProduct, cbocategory)
End Sub



Private Sub lsvProduct_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
        PopupMenu mnuMangeproduct
    End If
End Sub

Private Sub mnuedit_Click()
    item_editmode = True
    Dim editproduct As New item
        With editproduct
            .load_item (lsvProduct.SelectedItem.Text)
            active_edit_product_id = .id
            frmManageItem.txtcode.Text = .item_code
            frmManageItem.txtdescription.Text = .description
            frmManageItem.txtPrice.Text = .unit_price
            frmManageItem.txtunitofmeasure.Text = .unit_of_measure
            frmManageItem.cbostatus.Text = .status
            frmManageItem.cboProduct_type.Text = .product_type
        End With
            If editproduct.product_type = "raw" Then
                frmManageItem.Frame1.Enabled = True
                Call outputProductInListview(frmManageItem.lsvAssociatedItem, active_edit_product_id)
            Else
                frmManageItem.Frame1.Enabled = False
            End If
            frmManageItem.Show 1
End Sub
