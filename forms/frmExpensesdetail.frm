VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmExpensesdetail 
   BackColor       =   &H0097C2FD&
   Caption         =   "EXPENSES DETAILS"
   ClientHeight    =   5610
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   6810
   LinkTopic       =   "Form1"
   ScaleHeight     =   5610
   ScaleWidth      =   6810
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   5475
      Left            =   90
      TabIndex        =   0
      Top             =   90
      Width           =   6645
      Begin VB.CommandButton cmdPrint 
         Caption         =   "&Print"
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
         Left            =   4050
         TabIndex        =   1
         Top             =   4710
         Width           =   2295
      End
      Begin MSComctlLib.ListView lsvPartidaExpenses 
         Height          =   3285
         Left            =   150
         TabIndex        =   2
         Top             =   810
         Width           =   6225
         _ExtentX        =   10980
         _ExtentY        =   5794
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
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
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Description"
            Object.Width           =   5645
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Amount"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Date Created"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView lsvtotalExpenses 
         Height          =   285
         Left            =   180
         TabIndex        =   3
         Top             =   4140
         Width           =   6225
         _ExtentX        =   10980
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
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Item"
            Object.Width           =   4939
         EndProperty
      End
      Begin VB.Label lblPartidaName 
         BackStyle       =   0  'Transparent
         Caption         =   "Partida Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   150
         TabIndex        =   4
         Top             =   150
         Width           =   6195
      End
      Begin VB.Line Line1 
         X1              =   150
         X2              =   6390
         Y1              =   510
         Y2              =   510
      End
   End
   Begin VB.Menu mnumanageexpenses 
      Caption         =   "Manage Expenses"
      Begin VB.Menu mnudeleteexpenses 
         Caption         =   "Delete Expenses"
      End
   End
End
Attribute VB_Name = "frmExpensesdetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n_expenses As New expenses
Dim newPartida As New Partida

Private Sub cmdPrint_Click()
n_expenses.printexpenses (newPartida.partida_name)
End Sub

Private Sub Form_Load()
'Me.BackColor = &HC7FEF3
Me.Top = frmPartidaView.Top + 2700
Me.Left = frmPartidaView.Left + 900
newPartida.load_partida (activePartidaId)
lblPartidaName.Caption = newPartida.partida_name & "Expenses"
Call loadExpensesOnthisPartida(activePartidaId, lsvPartidaExpenses)
Call totalexpenses(activePartidaId, lsvTotalExpenses)
End Sub

Private Sub lsvPartidaExpenses_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
        PopupMenu mnumanageexpenses
    End If
End Sub

Private Sub mnudeleteexpenses_Click()
    Dim del_expenses As New expenses
        Dim confirm As Byte
            confirm = MsgBox("Delete this expenses?", vbQuestion + vbYesNo)
        If confirm = vbYes Then
            With del_expenses
                .loadallexpenses (lsvPartidaExpenses.SelectedItem.Text)
                .delete_expenses
            End With
            MsgBox ("Expenses deleted")
        End If
Call loadExpensesOnthisPartida(activePartidaId, lsvPartidaExpenses)
Call totalexpenses(activePartidaId, lsvTotalExpenses)
End Sub
