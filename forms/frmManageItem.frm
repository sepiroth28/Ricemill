VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManageItem 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   6660
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   7425
      Left            =   30
      ScaleHeight     =   7395
      ScaleWidth      =   7545
      TabIndex        =   0
      Top             =   30
      Width           =   7575
      Begin VB.TextBox txtno_kg_per_sack 
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
         Left            =   4230
         TabIndex        =   17
         Top             =   3180
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00E0FDFD&
         Caption         =   "Associated Item"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2205
         Left            =   270
         TabIndex        =   15
         Top             =   3900
         Width           =   4035
         Begin MSComctlLib.ListView lsvAssociatedItem 
            Height          =   1635
            Left            =   90
            TabIndex        =   16
            Top             =   390
            Width           =   3795
            _ExtentX        =   6694
            _ExtentY        =   2884
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            Checkboxes      =   -1  'True
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
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   3
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Object.Width           =   529
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "id"
               Object.Width           =   0
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "PRODUCT"
               Object.Width           =   6174
            EndProperty
         End
      End
      Begin VB.ComboBox cboProduct_type 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         ItemData        =   "frmManageItem.frx":0000
         Left            =   2250
         List            =   "frmManageItem.frx":000A
         TabIndex        =   13
         Top             =   1320
         Width           =   2445
      End
      Begin VB.ComboBox cbostatus 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         ItemData        =   "frmManageItem.frx":001B
         Left            =   330
         List            =   "frmManageItem.frx":0025
         TabIndex        =   1
         Text            =   "Active"
         Top             =   1290
         Width           =   1575
      End
      Begin VB.TextBox txtdescription 
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
         Left            =   2220
         TabIndex        =   3
         Top             =   2220
         Width           =   3855
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
         Left            =   4320
         TabIndex        =   6
         Top             =   5370
         Width           =   1995
      End
      Begin VB.TextBox txtunitofmeasure 
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
         Left            =   2190
         TabIndex        =   5
         Top             =   3180
         Width           =   1815
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
         Left            =   270
         TabIndex        =   4
         Top             =   3180
         Width           =   1875
      End
      Begin VB.TextBox txtcode 
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
         TabIndex        =   2
         Top             =   2220
         Width           =   1905
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No.Kg/Sack"
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
         Left            =   4260
         TabIndex        =   18
         Top             =   2880
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Product type:"
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
         Left            =   2310
         TabIndex        =   14
         Top             =   960
         Width           =   1605
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Status"
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
         Left            =   360
         TabIndex        =   12
         Top             =   930
         Width           =   810
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Item Description"
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
         Left            =   2220
         TabIndex        =   11
         Top             =   1860
         Width           =   1995
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   180
         X2              =   6900
         Y1              =   420
         Y2              =   420
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unit of Measure"
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
         Left            =   2190
         TabIndex        =   10
         Top             =   2880
         Width           =   1635
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
         Left            =   270
         TabIndex        =   9
         Top             =   2880
         Width           =   1020
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Item Code"
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
         Left            =   270
         TabIndex        =   8
         Top             =   1860
         Width           =   1260
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM MANAGEMENT"
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
         TabIndex        =   7
         Top             =   60
         Width           =   2580
      End
   End
End
Attribute VB_Name = "frmManageItem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cboProduct_type_Click()
    If cboProduct_type.Text = "raw" Then
        Frame1.Enabled = True
        Call loadProducts(lsvAssociatedItem)
        Call hideKgPerSack
    Else
        Frame1.Enabled = False
        lsvAssociatedItem.ListItems.Clear
        Call showKgPerSack
    End If
End Sub

Private Sub cmdSave_Click()
    Dim new_item As New item
        With new_item
            If item_editmode = True Then
                .load_item (active_edit_product_id)
            End If
                .item_code = txtcode.Text
                .description = txtdescription.Text
                .unit_price = txtPrice.Text
                .unit_of_measure = txtunitofmeasure.Text
                .status = cbostatus.Text
                .product_type = cboProduct_type.Text
            If item_editmode = True Then
                .Edit_item
            Else
                .save
            End If
        End With

        If cboProduct_type.Text = "raw" Then
            Dim lst As ListItem
            For Each lst In lsvAssociatedItem.ListItems
                    If item_editmode = True Then
                        Call updateAssociatedItems(new_item.id, lst.SubItems(1), lst)
                    Else
                        If lst.Checked = True Then
                            Call saveAssociatedItems(new_item.last_insert_id, lst.SubItems(1))
                        End If
                    End If
            Next
        Else
            If item_editmode = True Then
                If cboProduct_type = "raw" Then
                Call updateKilosPerSack(new_item.id, txtno_kg_per_sack)
                End If
            Else
                Call saveKgKilosPerSack(new_item.last_insert_id, txtno_kg_per_sack)
            End If
        End If
        MsgBox "Successfully saved!", vbInformation, "save"
End Sub

Private Sub Form_Load()
    Me.Top = 3900
    Me.Left = 7000
    If item_editmode = False Then
        Call clearctrl(frmManageItem)
    End If
End Sub

Sub hideKgPerSack()
    Label8.Visible = False
    txtno_kg_per_sack.Visible = False
End Sub

Sub showKgPerSack()
    Label8.Visible = True
    txtno_kg_per_sack.Visible = True
End Sub
