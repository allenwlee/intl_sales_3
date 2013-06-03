helpers do

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @error_message = "You are not logged in."
      erb :no_permission
    end
  end

  def currency(num)
    '$' + num.to_i.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    
  end

  def save_history(sale)
    BidHistory.create(data: sale.bid, sale_id: sale.id)
    AskHistory.create(data: sale.ask, sale_id: sale.id)
    CloseHistory.create(data: sale.close, sale_id: sale.id)
    CloseDateHistory.create(data: sale.close_date, sale_id: sale.id)
  end

end

