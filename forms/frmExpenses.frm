VERSION 5.00
Begin VB.Form frmExpenses 
   BackColor       =   &H80000018&
   Caption         =   "Expenses"
   ClientHeight    =   4140
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6525
   LinkTopic       =   "Form1"
   ScaleHeight     =   4140
   ScaleWidth      =   6525
   StartUpPosition =   3  'Windows Default
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
      Left            =   1920
      TabIndex        =   11
      Top             =   2220
      Width           =   1035
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
      Left            =   3450
      TabIndex        =   8
      Top             =   2250
      Width           =   1035
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
      Left            =   2280
      TabIndex        =   5
      Top             =   3330
      Width           =   1935
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
      Left            =   4320
      TabIndex        =   4
      Top             =   3330
      Width           =   1935
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
      Left            =   5130
      TabIndex        =   3
      Top             =   2280
      Width           =   1035
   End
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
      Height          =   915
      Left            =   1920
      MultiLine       =   -1  'True
      TabIndex        =   2
      Top             =   900
      Width           =   4215
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
      Left            =   3150
      TabIndex        =   13
      Top             =   2310
      Width           =   135
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "No.of kg:"
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
      Left            =   1920
      TabIndex        =   12
      Top             =   1890
      Width           =   1095
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
      Left            =   4740
      TabIndex        =   10
      Top             =   2340
      Width           =   165
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Rate/kg:"
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
      Left            =   3450
      TabIndex        =   9
      Top             =   1920
      Width           =   1035
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
      Left            =   4140
      TabIndex        =   7
      Top             =   360
      Width           =   2175
   End
   Begin VB.Line Line1 
      X1              =   360
      X2              =   6180
      Y1              =   660
      Y2              =   660
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
      Left            =   420
      TabIndex        =   6
      Top             =   300
      Width           =   2670
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
      Left            =   420
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Amount:"
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
      Left            =   5160
      TabIndex        =   0
      Top             =   1980
      Width           =   1020
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
    .desc = txtDescription.Text
    .amount = Val(txtAmount.Text)
    .date_created = Format(lblDate.Caption, "yyyy-mm-dd")
    .no_of_kg = txtnoogkg.Text
    .rate_per_kg = txtrate.Text
    .add_expenses
End With
Call totalexpenses(activePartidaId, frmPartidaView.lsvtotalExpenses)
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub Form_Load()
Me.Top = frmPartidaView.Top + 2700
Me.Left = frmPartidaView.Left + 900
lblDate.Caption = FormatDateTime(Date, vbShortDate)
End Sub

Private Sub txtnoogkg_Change()
    Call get_total_amount(txtnoogkg, txtrate, txtAmount)
End Sub

Private Sub txtrate_Change()
    Call get_total_amount(txtnoogkg, txtrate, txtAmount)
End Sub
