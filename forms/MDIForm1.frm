VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "Ricemill"
   ClientHeight    =   8865
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   13845
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnu_file_partida 
         Caption         =   "Partida"
      End
      Begin VB.Menu mnu_sep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuitem 
         Caption         =   "Item"
      End
      Begin VB.Menu mnusep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_file_exit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnu_file_exit_Click()
End
End Sub

Private Sub mnu_file_partida_Click()
frmManagePartida.Show
End Sub

Private Sub mnuitem_Click()
frmManageItem.Show
End Sub
