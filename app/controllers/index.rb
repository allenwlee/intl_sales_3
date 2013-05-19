get '/' do
  erb :sales
end


get '/login' do
  erb :login
end


post '/user/login' do
  if @user = User.authenticate(params[:email], params[:password])
    session[:user_id] = user.id
    erb :profile
  else
    @error_message = "Wrong login or password"
    erb :no_permission
  end
end

get 'user/:id/sales/create' do
  if session[:user_id]
    erb :sales_input
  else
    erb :no_permission
  end
end


get '/create' do
  erb :create
end

get '/login' do
  erb :login
end


post '/user/create' do
  @user = User.new(email: params[:email], password: params[:password])
  @user.save!
  session[:user_id] = @user.id 
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end


get 'user/:id/sales' do
  erb :sales_output
end