get '/' do
  erb :sales
end

get '/sales/create' do
  if session[:user_id]
    erb :sales_input
  else
    erb :no_permission
  end
end

post '/sales_output' do
  # @user = User.authenticate(params[:email], params[:password])
  # if @user
  #   session[:user_id] = user.id
  # end
  @user = User.find(session[:user_id])
  @sale = Sale.create(territory: params[:territory], bid: params[:bid], ask: params[:ask], close: params[:close], close_date: params[:close_date])
  @user.sales << @sale
  erb :sales_output
end

get '/create' do
  erb :create
end

get '/login' do
  erb :login
end


post '/create' do
  @user = User.new(email: params[:email], password: params[:password])
  @user.save!
  session[:user_id] = @user.id 
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end


get '/sales' do
  erb :sales_output
end

post '/profile' do
  @user = User.find_by_email(params[:email])
  User.authenticate(params[:email], params[:password])
  session[:user_id] = @user.id 
  erb :profile
end
