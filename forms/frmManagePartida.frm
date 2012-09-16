VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManagePartida 
   BackColor       =   &H00000080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MANAGE PARTIDA"
   ClientHeight    =   8250
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9690
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8250
   ScaleWidth      =   9690
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   8115
      Left            =   60
      ScaleHeight     =   8085
      ScaleWidth      =   9525
      TabIndex        =   0
      Top             =   60
      Width           =   9555
      Begin VB.CommandButton cmdCreate 
         Caption         =   "CREATE NEW"
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
         Left            =   6300
         TabIndex        =   4
         Top             =   7200
         Width           =   3015
      End
      Begin VB.CommandButton cmdOpen 
         Caption         =   "OPEN"
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
         Left            =   3720
         TabIndex        =   2
         Top             =   7200
         Width           =   2535
      End
      Begin MSComctlLib.ListView lsvPartida 
         Height          =   6495
         Left            =   180
         TabIndex        =   1
         Top             =   600
         Width           =   9135
         _ExtentX        =   16113
         _ExtentY        =   11456
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
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "PARTIDA NAME"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "stockout_status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "created on"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "created by"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "PARTIDA LIST"
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
End
Attribute VB_Name = "frmManagePartida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCreate_Click()
newPartida = True
frmPartidaView.Show
End Sub

Private Sub cmdOpen_Click()
newPartida = False
Dim sql As String
Dim rs As New ADODB.Recordset
activePartidaId = Val(lsvPartida.SelectedItem.Text)
'sql = "select status from partida where id='" & activePartidaId & "'"
'Set rs = db.execute(sql)
'PartidaStatus = rs.Fields("status").Value
'stockout_status = rs.Fields("stockout_status").Value
frmPartidaView.Show
End Sub
Private Sub Form_Load()
Call loadPartidaList(lsvPartida)
Call enable_partida_open(lsvPartida, cmdOpen)
End Sub

Private Sub lsvPartida_DblClick()
Dim managepartida As New Partida
    partida_id_to_manage = lsvPartida.SelectedItem.Text
    managepartida.load_partida (lsvPartida.SelectedItem.Text)
    frmPartidaManagement.Show 1
End Sub
