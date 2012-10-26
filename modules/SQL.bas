Attribute VB_Name = "SQL"
'SQL VIEWS ===========================================================================================================
Public Const view_partida_stock_in_list As String = "select *,pro.name as provider_name from stock_in s inner join stockin_provider sp on s.id=sp.stockin_id " & _
                                                    "inner join provider pro on sp.provider_id=pro.id inner join " & _
                                                    "partida_stockin ps on s.id=ps.stockin_id inner join partida p " & _
                                                    "on ps.partida_id=p.id"

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
                                                    
Public Const view_expenses_in_this_partida As String = "SELECT * FROM partida_expenses pe " & _
                                                    " INNER JOIN expenses e " & _
                                                    " ON pe.expenses_id=e.id INNER JOIN partida p " & _
                                                    " ON pe.partida_id=p.id"
                                                    
                                                    
Public Const load_partida_to_evaluate As String = "SELECT p.id,p.name,sum(s.total_amount) as " & _
                                                 " totalcapital,sum(e.amount) as totalexpenses,sum(so.total_amount) as " & _
                                                 " totalgross,sum(so.total_amount-(s.total_amount + e.amount)) as " & _
                                                 " profit from partida p inner join partida_stockin ps on p.id=ps.partida_id " & _
                                                 " inner join stock_in s on s.id=ps.stockin_id inner join partida_expenses pe " & _
                                                 " on p.id=pe.partida_id inner join expenses e on e.id=pe.expenses_id inner join " & _
                                                 " partida_stockout pso on p.id=pso.partida_id inner join stock_out so on so.id=pso.stockout_id"
                                                    
Public Const view_partida_capital As String = "select sum(s.total_amount) as total_capital from partida p inner join partida_stockin ps on " & _
                                                " p.id=ps.partida_id inner join stock_in s on s.id=ps.stockin_id"

Public Const view_partida_expenses As String = "select sum(e.amount) as total_expenses from partida p inner join partida_expenses pe on " & _
                                                " p.id=pe.partida_id inner join expenses e on e.id=pe.expenses_id"
Public Const view_partida_gross As String = "select sum(so.total_amount) as total_gross from partida p inner join partida_stockout pso on " & _
                                                " p.id=pso.partida_id inner join stock_out so on so.id=pso.stockout_id inner join items i on so.item_id=i.id"


