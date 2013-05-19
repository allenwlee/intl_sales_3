helpers do

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @error_message = "You are not logged in."
      erb :no_permission
    end
  end

end

