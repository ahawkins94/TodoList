require 'sinatra'
require_relative "./TodoManager.rb"


get '/todos' do
	TodoManager.index
end

post '/todos' do 
	new_todo = params[:todo]
	TodoManager.create(new_todo) 
	"CREATE"
end

get '/todos/:id' do
	id = params[:id].to_i
	TodoManager.show(id)
	"SHOW: #{id}"
end

put '/todos/:id' do
	id = params[:id].to_i
	new_todo = params[:todo]
	TodoManager.update(id, new_todo)
	"UPDATE: #{id}"

end

delete '/todos/:id' do
	id = params[:id].to_i
	TodoManager.delete(id)
	"DESTROY: #{id}"
end