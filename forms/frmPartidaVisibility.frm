VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmPartidaVisibility 
   BackColor       =   &H80000018&
   Caption         =   "Partida Visibility"
   ClientHeight    =   7380
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   7380
   ScaleWidth      =   7305
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdHideandSeek 
      Caption         =   "Close Selected Partida"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   3210
      TabIndex        =   3
      Top             =   6600
      Width           =   3825
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5745
      Left            =   210
      TabIndex        =   1
      Top             =   750
      Width           =   6825
      _ExtentX        =   12039
      _ExtentY        =   10134
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Open Partida"
      TabPicture(0)   =   "frmPartidaVisibility.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lsvActivePartida"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "chkSelectAll"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Close Partida"
      TabPicture(1)   =   "frmPartidaVisibility.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lsvinactivepartida"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "chkSelectallinactive"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      Begin VB.CheckBox chkSelectallinactive 
         Caption         =   "Select All"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74700
         TabIndex        =   5
         Top             =   750
         Width           =   2055
      End
      Begin VB.CheckBox chkSelectAll 
         Caption         =   "Select All"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   300
         TabIndex        =   4
         Top             =   750
         Width           =   2055
      End
      Begin MSComctlLib.ListView lsvActivePartida 
         Height          =   3945
         Left            =   210
         TabIndex        =   2
         Top             =   990
         Width           =   6405
         _ExtentX        =   11298
         _ExtentY        =   6959
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
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   529
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Partida name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Partida status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Date created"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Created by"
            Object.Width           =   2822
         EndProperty
      End
      Begin MSComctlLib.ListView lsvinactivepartida 
         Height          =   3945
         Left            =   -74790
         TabIndex        =   6
         Top             =   990
         Width           =   6405
         _ExtentX        =   11298
         _ExtentY        =   6959
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
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   529
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Partida name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Partida status"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Date created"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Created by"
            Object.Width           =   2822
         EndProperty
      End
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Partida Visibility"
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
      TabIndex        =   0
      Top             =   210
      Width           =   3975
   End
End
Attribute VB_Name = "frmPartidaVisibility"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkSelectAll_Click()
Dim checkall As Boolean
If chkSelectAll.Value = 1 Then
checkall = True
Else
checkall = False
End If
For Each list In lsvActivePartida.ListItems
    list.Checked = checkall
Next
End Sub

Private Sub chkSelectallinactive_Click()
Dim checkall As Boolean
If chkSelectallinactive.Value = 1 Then
    checkall = True
Else
    checkall = False
End If
For Each list In lsvinactivepartida.ListItems
    list.Checked = checkall
Next
End Sub

Private Sub cmdHideandSeek_Click()
Dim lst As ListItem
If cmdHideandSeek.Caption = "Close Selected Partida" Then

    For Each lst In lsvActivePartida.ListItems
        Call statuschanger(Val(lst.Text), lst.Checked, SSTab1.Tab)
    Next
    MsgBox "Successfully close selected partida", vbInformation, "updated"
    
ElseIf cmdHideandSeek.Caption = "Open Selected Partida" Then

    For Each lst In lsvinactivepartida.ListItems
        Call statuschanger(Val(lst.Text), lst.Checked, SSTab1.Tab)
    Next
    MsgBox "Successfully open selected partida", vbInformation, "updated"
End If
End Sub

Private Sub Form_Load()
listviewload
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
Call listviewload
End Sub

Private Sub listviewload()
Dim pswitch As Boolean

If SSTab1.Tab = 0 Then
pswitch = False
    cmdHideandSeek.Caption = "Close Selected Partida"
    chkSelectAll.Value = 0
    Call swithch_partidaload(lsvActivePartida, pswitch)
Else
pswitch = True
    cmdHideandSeek.Caption = "Open Selected Partida"
    chkSelectallinactive.Value = 0
    Call swithch_partidaload(lsvinactivepartida, pswitch)
End If
End Sub
