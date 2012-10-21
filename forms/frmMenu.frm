VERSION 5.00
Begin VB.Form frmMenu 
   BackColor       =   &H00000080&
   ClientHeight    =   12345
   ClientLeft      =   120
   ClientTop       =   120
   ClientWidth     =   16710
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "frmMenu.frx":0000
   ScaleHeight     =   12345
   ScaleWidth      =   16710
   Begin VB.Image Image7 
      Height          =   1110
      Left            =   690
      Picture         =   "frmMenu.frx":D0C32
      Top             =   2070
      Width           =   1110
   End
   Begin VB.Label lblactiv_user 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   2010
      TabIndex        =   1
      Top             =   2190
      Width           =   2955
   End
   Begin VB.Image Image6 
      Height          =   330
      Left            =   3780
      Picture         =   "frmMenu.frx":D5743
      Top             =   2970
      Width           =   1290
   End
   Begin VB.Image Image5 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":D97EF
      Top             =   8730
      Width           =   4800
   End
   Begin VB.Image Image4 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":E0C71
      Top             =   7440
      Width           =   4800
   End
   Begin VB.Image Image3 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":E80D4
      Top             =   6150
      Width           =   4800
   End
   Begin VB.Image Image2 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":EFC3F
      Top             =   4860
      Width           =   4800
   End
   Begin VB.Image Image1 
      Height          =   1260
      Left            =   360
      MousePointer    =   99  'Custom
      Picture         =   "frmMenu.frx":F7820
      Top             =   3570
      Width           =   4800
   End
   Begin VB.Label lbldate 
      BackStyle       =   0  'Transparent
      Caption         =   "Saturday, October 14, 2012"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0093CCEE&
      Height          =   555
      Left            =   660
      TabIndex        =   0
      Top             =   780
      Width           =   4335
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Width = 16650
    Me.Height = 12090
    lbldate.Caption = FormatDateTime(Now, vbLongDate)
    Call renderButtonBasedOnUserPreviliges
End Sub
'
'Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'    Image1.MouseIcon = LoadPicture("D:\sideline\Ricemill\images\VB Background\aero_link_xl.cur")
'    Image1.MousePointer = vbHourglass
'End Sub
Private Sub Image1_Click()
    frmManagePartida.Show 1
End Sub

Private Sub Image2_Click()
    frmProduct.Show 1
'    frmManageItem.Show 1
End Sub

Private Sub Image3_Click()
    frmManageProvider.Show 1
End Sub

Private Sub Image6_Click()
Dim confirm As Byte
    confirm = MsgBox("Do you want to Log-out now?", vbQuestion + vbYesNo)
    If confirm = vbYes Then
        Unload MDIForm1
        frmuserlogin.Show
    End If
End Sub
