get '/user/:user_id/project/all' do
  @projects = current_user.projects
  erb :user_projects
end



post 'user/:user_id/project/:project_id/sale_output' do
  @user = User.find(session[:user_id])
  @sale = Sale.create(territory: params[:territory], bid: params[:bid], ask: params[:ask], close: params[:close], close_date: params[:close_date])
  @user.sales << @sale
  erb :sale_output
end

get '/user/:user_id/project/create' do
  erb :project_input
end

post '/user/:user_id/project/create' do
  @project = Project.create(title: params[:title], budget_size: params[:budget], user_id: params[:user_id])
  @project.genres << Genre.create(data: params[:genres])
  erb :project_output
end

get '/user/:user_id/project/:project_id' do
  current_user.id = params[:user_id]
  @project = Project.find(params[:project_id])
  erb :project_output
end

get '/user/:user_id/project/:project_id/edit' do
  erb :project_input
end



# post '/user/:user_id/project/:project_id/edit' do
#   current_user.id = params[:user_id]
#   @project = Project.find(params[:project_id])
#   @project.update_attributes(title: )
#   erb :project_output
# end
