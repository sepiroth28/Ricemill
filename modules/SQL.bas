Attribute VB_Name = "SQL"
'SQL VIEWS ===========================================================================================================
Public Const view_partida_stock_in_list As String = "SELECT * FROM `partida_stockin` ps " & _
                                                    " INNER JOIN stock_in s " & _
                                                    " ON ps.stockin_id = s.id" & _
                                                    " INNER JOIN items i " & _
                                                    " ON s.item_id = i.id"

Public Const view_partida_stock_in_totals As String = "SELECT SUM(qty_in) as total_in,SUM(total_amount) as total_amount FROM `partida_stockin` ps " & _
                                                    " INNER JOIN stock_in s " & _
                                                    " ON ps.stockin_id = s.id" & _
                                                    " INNER JOIN items i " & _
                                                    " ON s.item_id = i.id"

Public Const view_partida_stock_out_list As String = "SELECT * FROM `partida_stockout` ps " & _
                                                    " INNER JOIN stock_out s " & _
                                                    " ON ps.stockout_id = s.id" & _
                                                    " INNER JOIN items i " & _
                                                    " ON s.item_id = i.id"

Public Const view_partida_stock_out_totals As String = "SELECT SUM(qty_out) as total_out,SUM(total_amount) as total_amount FROM `partida_stockout` ps " & _
                                                    " INNER JOIN stock_out s " & _
                                                    " ON ps.stockout_id = s.id" & _
                                                    " INNER JOIN items i " & _
                                                    " ON s.item_id = i.id"


