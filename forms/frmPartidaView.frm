VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmPartidaView 
   Appearance      =   0  'Flat
   BackColor       =   &H8000000D&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "VIEW PARTIDA"
   ClientHeight    =   9975
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   14775
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9975
   ScaleWidth      =   14775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C7FEF3&
      ForeColor       =   &H80000008&
      Height          =   9855
      Left            =   60
      ScaleHeight     =   9825
      ScaleWidth      =   14625
      TabIndex        =   0
      Top             =   60
      Width           =   14655
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
         Height          =   555
         Left            =   240
         TabIndex        =   9
         Text            =   "Input partida name here"
         Top             =   180
         Visible         =   0   'False
         Width           =   6975
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
         Left            =   11460
         TabIndex        =   8
         Top             =   8820
         Visible         =   0   'False
         Width           =   2955
      End
      Begin VB.CommandButton Command1 
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
         Left            =   13800
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
         Left            =   6600
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
         Height          =   7335
         Left            =   7440
         TabIndex        =   3
         Top             =   1380
         Width           =   6975
         Begin MSComctlLib.ListView lsvStockOut 
            Height          =   5715
            Left            =   180
            TabIndex        =   7
            Top             =   300
            Width           =   6615
            _ExtentX        =   11668
            _ExtentY        =   10081
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
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   5
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
         Height          =   7335
         Left            =   240
         TabIndex        =   2
         Top             =   1380
         Width           =   6975
         Begin MSComctlLib.ListView lsvStockIn 
            Height          =   5715
            Left            =   180
            TabIndex        =   4
            Top             =   300
            Width           =   6615
            _ExtentX        =   11668
            _ExtentY        =   10081
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
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   5
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
End Sub

Private Sub cmdSave_Click()
If newPartida Then
    Dim new_partida As New Partida
        With new_partida
            .partida_name = txtPartidaName.Text
            .partida_status = 1
            .created_at = Format(Date, "yyyy-mm-dd")
            .created_by = "admin"
            .save
        End With
        MsgBox "Successfully saved!", vbInformation, "save"
        Unload Me
End If
End Sub

Private Sub Form_Load()
If newPartida Then
    Call renderNewPartida
Else
    edit_partida.load_partida (activePartidaId)
    lblPartidaName.Caption = edit_partida.partida_name & " Activities"
End If
End Sub

Private Sub txtPartidaName_Click()
If txtPartidaName.Text = "Input partida name here" Then
    txtPartidaName.Text = ""
    txtPartidaName.ForeColor = normalColor
End If

End Sub
