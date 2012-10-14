VERSION 5.00
Begin VB.Form frmMenu 
   ClientHeight    =   11520
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   16410
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "frmMenu.frx":0000
   ScaleHeight     =   11520
   ScaleWidth      =   16410
   Begin VB.Image Image6 
      Height          =   330
      Left            =   3780
      Picture         =   "frmMenu.frx":C916E
      Top             =   2970
      Width           =   1290
   End
   Begin VB.Image Image5 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":CD21A
      Top             =   8730
      Width           =   4800
   End
   Begin VB.Image Image4 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":D469C
      Top             =   7440
      Width           =   4800
   End
   Begin VB.Image Image3 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":DBAFF
      Top             =   6150
      Width           =   4800
   End
   Begin VB.Image Image2 
      Height          =   1260
      Left            =   360
      Picture         =   "frmMenu.frx":E366A
      Top             =   4860
      Width           =   4800
   End
   Begin VB.Image Image1 
      Height          =   1260
      Left            =   360
      MousePointer    =   99  'Custom
      Picture         =   "frmMenu.frx":EB24B
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
    frmManagePartida.Show
End Sub

Private Sub Image2_Click()
    frmManageItem.Show
End Sub
