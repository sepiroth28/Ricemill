VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmArchieve_partida 
   BackColor       =   &H00000080&
   Caption         =   "Archived Partida"
   ClientHeight    =   7515
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   9675
   LinkTopic       =   "Form1"
   ScaleHeight     =   7515
   ScaleWidth      =   9675
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   7365
      Left            =   60
      ScaleHeight     =   7335
      ScaleWidth      =   9525
      TabIndex        =   0
      Top             =   70
      Width           =   9555
      Begin MSComctlLib.ListView lsvPartida 
         Height          =   6555
         Left            =   180
         TabIndex        =   1
         Top             =   600
         Width           =   9135
         _ExtentX        =   16113
         _ExtentY        =   11562
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
            Text            =   "PARTIDA NAME"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "STATUS"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "DESCRIPTION"
            Object.Width           =   3175
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "CREATED ON"
            Object.Width           =   3175
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "CREATED BY"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "STOCKOU STATUS"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "ARCHIVE PARTIDA LIST"
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
         TabIndex        =   2
         Top             =   180
         Width           =   3615
      End
   End
   Begin VB.Menu mnumanageArechive 
      Caption         =   "Manage Archive Partida"
      Begin VB.Menu mnuremove 
         Caption         =   "Remove"
      End
   End
End
Attribute VB_Name = "frmArchieve_partida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Top = 3900
Me.Left = 6100
Me.Height = 8205
Call loadPartidalistInArchive(lsvPartida)
'Call enable_partida_open(lsvPartida, cmdOpen)
End Sub

Private Sub lsvPartida_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
        PopupMenu mnumanageArechive
    End If
End Sub

Private Sub mnueditPartida_Click()
Dim edited_name As String
Dim confirm As Byte
confirm = MsgBox("are you sure you want to edit this partida name?", vbQuestion + vbYesNo)
If confirm = vbYes Then
    edited_name = InputBox("Edit Partida name", "Edit partida name")
    Call editPartidaname(edited_name, lsvPartida.SelectedItem.Text)
End If
    Call loadPartidalistMainwindow(lsvPartida)
End Sub

Private Sub mnusend_to_archived_Click()
    Dim confirm As Byte
        confirm = MsgBox("Send Patida to Archive?", vbQuestion + vbYesNo)
    If confirm = vbYes Then
    Call ArchiveThisPartida(lsvPartida.SelectedItem.Text)
        MsgBox ("partida " & lsvPartida.SelectedItem.SubItems(1) & " is now on archived")
    End If
    Call loadPartidalistMainwindow(lsvPartida)
End Sub

Private Sub mnuremove_Click()
    Dim confirm As Byte
    Dim delete_from_archive As New Partida
        confirm = MsgBox("Do you want to remove this partida in Archive?" & vbCrLf & "All details of this partida will be deleted", vbQuestion + vbYesNo)
    If confirm = vbYes Then
        delete_from_archive.delete_partida (lsvPartida.SelectedItem.Text)
        MsgBox ("partida deleted")
    End If
    Call loadPartidalistInArchive(lsvPartida)
End Sub
