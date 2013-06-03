get 'user/:id/sale/create' do
  if session[:user_id]
    erb :sale_input
  else
    erb :no_permission
  end
end

post '/user/:user_id/project/:project_id/sale/create' do
  p params
  @project = Project.find(params[:project_id])
  @sale = Sale.create(params[:sale])
  @project.sales << @sale
  @sale.territories << Territory.create(name: params[:territories])
  @sale.media << Medium.create(type: params[:media])
  erb :project_sale
end 

get '/user/:user_id/project/:project_id/sale/all' do
  @project = Project.find(params[:project_id])
  erb :project_sale
end

get 'user/:id/sale' do
  erb :sale_output
end

get '/user/:user_id/project/:project_id/sale/:sale_id/edit' do
  @user = User.find(params[:user_id])
  @project = Project.find(params[:project_id])
  @sale = Sale.find(params[:sale_id])
  erb :sale_edit
end

post '/user/:user_id/project/:project_id/sale/:sale_id/edit' do
  @user = User.find(params[:user_id])
  @project = Project.find(params[:project_id])
  @sale = Sale.find(params[:sale_id])
  save_history(@sale)
  @sale.update_attributes(params[:sale], territories: params[:territories], media: params[:media])
  
  erb :sale_edit
end