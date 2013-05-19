get '/' do
  erb :sales
end

get 'user/:id/sales/create' do
  if session[:user_id]
    erb :sales_input
  else
    erb :no_permission
  end
end

post 'user/:id/sales_output' do
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

post '/user/:id/profile' do
  if @user = User.find_by_email(params[:email])
    if User.authenticate(params[:email], params[:password])
      session[:user_id] = @user.id 
      erb :profile
    else
      erb :no_permission
    end
  else
    erb :no_user
end

get '/user/:id/project/input' do
  erb :project_input
end

post '/user/:id/project/input' do
  @project = Project.create(title: params[:title], budget_size: params[:budget])
  @project.genres << Genre.create(data: params[:genres])
  erb :project_output
end