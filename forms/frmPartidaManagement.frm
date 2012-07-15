VERSION 5.00
Begin VB.Form frmPartidaManagement 
   Caption         =   "Manage Partida"
   ClientHeight    =   5670
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5475
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   5475
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtPartidaname 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   960
      TabIndex        =   9
      Top             =   720
      Width           =   3375
   End
   Begin VB.CommandButton cmdClosepartida 
      Caption         =   "&Close"
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   4920
      Width           =   2295
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   615
      Left            =   2760
      TabIndex        =   7
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label Label7 
      Caption         =   "Created by:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   3240
      Width           =   1335
   End
   Begin VB.Label lblCreatedby 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   5
      Top             =   3720
      Width           =   3015
   End
   Begin VB.Label Label5 
      Caption         =   "Date created:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblDatecreated 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   3
      Top             =   2760
      Width           =   3255
   End
   Begin VB.Label Label3 
      Caption         =   "Status:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label lblPartidastatus 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   1
      Top             =   1800
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "Partida Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   1695
   End
End
Attribute VB_Name = "frmPartidaManagement"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim managepartida As New partida
Private Sub cmdClosepartida_Click()
Call closepartida(partida_id_to_manage, managepartida.partida_status)
End Sub

Private Sub Form_Load()
    managepartida.load_partida (partida_id_to_manage)
    Me.txtPartidaName.Text = managepartida.partida_name
If managepartida.partida_status = 1 Then
    Me.lblPartidastatus.Caption = "Open"
Else
    Me.lblPartidastatus.Caption = "Closed"
End If
    Me.lblDatecreated.Caption = managepartida.created_at
    Me.lblCreatedby.Caption = managepartida.created_by
    Me.cmdUpdate.Enabled = False
End Sub

Private Sub txtPartidaname_Change()
    cmdUpdate.Enabled = True
End Sub
