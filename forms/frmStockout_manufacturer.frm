VERSION 5.00
Begin VB.Form frmStockout_manufacturer 
   BackColor       =   &H0097C2FD&
   Caption         =   "Stockout Manufacturer"
   ClientHeight    =   2280
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5985
   LinkTopic       =   "Form1"
   ScaleHeight     =   2280
   ScaleWidth      =   5985
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      BackColor       =   &H80000018&
      Height          =   2175
      Left            =   30
      TabIndex        =   0
      Top             =   60
      Width           =   5925
      Begin VB.ComboBox cbomanufacturer 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   90
         TabIndex        =   3
         Top             =   540
         Width           =   4755
      End
      Begin VB.CommandButton cmdSet 
         Caption         =   "Set"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4860
         TabIndex        =   1
         Top             =   540
         Width           =   945
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Set Stockout Manufacturer"
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
         Left            =   90
         TabIndex        =   2
         Top             =   120
         Width           =   3270
      End
   End
End
Attribute VB_Name = "frmStockout_manufacturer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSet_Click()
    Dim setmanufacturer As New default_manufacturer
        With setmanufacturer
                            .loadmanufacturer (cbomanufacturer)
            If isManufacturersAlreadySet = True Then
                            .update
            Else
                            .insert
            End If
        End With
        MsgBox ("Stockout manufacturer's Set")
        Unload Me
End Sub

Private Sub Form_Load()
    Call loadManufacturers_name(cbomanufacturer)
End Sub

Sub loadmanufacturers(lsv As ListView)
    Dim sql As String
    Dim col As New Collection
    
        sql = "SELECT * FROM `manufacturers`"
    col.Add "*"
    Call populateResultOnThisListView_from_db2(sql, lsv, col)
End Sub

Private Function isManufacturersAlreadySet() As Boolean
    Dim sql As String
    Dim rs As New ADODB.Recordset
    Dim temp As Boolean
        sql = "SELECT * FROM `manufacturers`"
    Set rs = db.execute(sql)
    If rs.RecordCount Then
        temp = True
    End If
        isManufacturersAlreadySet = temp
End Function
Private Function loadManufacturers_name(cbo As ComboBox)
    Dim sql As String
    Dim rs As New ADODB.Recordset
        sql = "SELECT manufacturers_name from manufacturers ORDER BY manufacturers_name"
    Set rs = db2.execute(sql)
    
        If rs.RecordCount Then
            Do Until rs.EOF
                cbo.AddItem rs.Fields(0).Value
                rs.MoveNext
            Loop
        End If
End Function

Private Sub lsvmanufacturers_Click()
    txtmanufacturer_set.Text = lsvmanufacturers.SelectedItem.SubItems(1)
    Call toggle_listview(lsvmanufacturers)
End Sub

Private Sub txtmanufacturer_set_Click()
 Call toggle_listview(lsvmanufacturers)
End Sub
