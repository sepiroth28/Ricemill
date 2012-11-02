VERSION 5.00
Begin VB.Form frmExpenses 
   BackColor       =   &H0097C2FD&
   Caption         =   "EXPENSES"
   ClientHeight    =   4215
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6285
   LinkTopic       =   "Form1"
   ScaleHeight     =   4215
   ScaleWidth      =   6285
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   4125
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   6165
      Begin VB.TextBox txtDescription 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   720
         MultiLine       =   -1  'True
         TabIndex        =   6
         Top             =   1080
         Width           =   4455
      End
      Begin VB.TextBox txtAmount 
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
         Left            =   4170
         TabIndex        =   5
         Top             =   2100
         Width           =   1035
      End
      Begin VB.CommandButton cmdAddExpenses 
         Caption         =   "Add Expenses"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   3360
         TabIndex        =   4
         Top             =   3210
         Width           =   1935
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   1320
         TabIndex        =   3
         Top             =   3210
         Width           =   1935
      End
      Begin VB.TextBox txtrate 
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
         Left            =   2430
         TabIndex        =   2
         Top             =   2130
         Width           =   1095
      End
      Begin VB.TextBox txtnoogkg 
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
         Left            =   720
         TabIndex        =   1
         Top             =   2100
         Width           =   1335
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Amount:"
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
         Left            =   4200
         TabIndex        =   14
         Top             =   1860
         Width           =   840
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
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
         Left            =   720
         TabIndex        =   13
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Add Partida Expenses"
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
         Top             =   180
         Width           =   2670
      End
      Begin VB.Line Line1 
         X1              =   180
         X2              =   6000
         Y1              =   540
         Y2              =   540
      End
      Begin VB.Label lblDate 
         BackStyle       =   0  'Transparent
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   315
         Left            =   3780
         TabIndex        =   11
         Top             =   240
         Width           =   2175
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Rate/unit:"
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
         Left            =   2490
         TabIndex        =   10
         Top             =   1860
         Width           =   1005
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "="
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
         Left            =   3780
         TabIndex        =   9
         Top             =   2220
         Width           =   165
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No.of kg/pcs:"
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
         Left            =   720
         TabIndex        =   8
         Top             =   1830
         Width           =   1395
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "x"
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
         Left            =   2190
         TabIndex        =   7
         Top             =   2190
         Width           =   135
      End
   End
End
Attribute VB_Name = "frmExpenses"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddExpenses_Click()
Dim exp As New expenses
Set exp = New expenses
With exp
    .desc = txtdescription.Text
    .amount = Val(txtAmount.Text)
    .date_created = Format(lbldate.Caption, "yyyy-mm-dd")
    .no_of_kg = txtnoogkg.Text
    .rate_per_kg = txtrate.Text
    .add_expenses
End With
MsgBox (txtdescription.Text & " Expenses Added")
Call clearctrl(frmExpenses)
Call totalexpenses(activePartidaId, frmPartidaView.lsvtotalExpenses)
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub Form_Load()
Me.Top = frmPartidaView.Top + 2700
Me.Left = frmPartidaView.Left + 900
lbldate.Caption = FormatDateTime(Date, vbShortDate)
End Sub

Private Sub txtnoogkg_Change()
    Call get_total_amount(txtnoogkg, txtrate, txtAmount)
End Sub

Private Sub txtrate_Change()
    Call get_total_amount(txtnoogkg, txtrate, txtAmount)
End Sub
