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
   Begin VB.Menu mnusettings 
      Caption         =   "Settings"
      Begin VB.Menu mnumanageuseraccount 
         Caption         =   "Manage User Accounts"
      End
   End
   Begin VB.Menu mnuAdmin 
      Caption         =   "Admin"
      Begin VB.Menu mnuPartidavisibility 
         Caption         =   "Open Close Partida"
      End
      Begin VB.Menu mnu_sep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEvaluatepartida 
         Caption         =   "Evaluate Partida"
      End
      Begin VB.Menu mnu_sep4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuManage_provider 
         Caption         =   "Manage Provider"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
    frmMenu.Show
End Sub

Private Sub mnu_file_exit_Click()
End
End Sub

Private Sub mnu_file_partida_Click()
frmManagePartida.Show
End Sub

Private Sub mnuClosepartida_Click()
frmManagePartida.Show 1
End Sub

Private Sub mnuEvaluatepartida_Click()
frmEvaluatepartida.Show 1
End Sub

Private Sub mnuitem_Click()
frmProduct.Show 1
End Sub

Private Sub mnuManage_provider_Click()
frmManageProvider.Show 1
End Sub

Private Sub mnumanageuseraccount_Click()
    frmManageUseraccount.Show 1
End Sub

Private Sub mnuPartidavisibility_Click()
frmPartidaVisibility.Show 1
End Sub
