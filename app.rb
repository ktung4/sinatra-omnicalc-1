require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num **2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num **0.5
  erb(:square_root_results)
end

get("/random/new") do
  erb(:new_min_max_calc)
end

get("/min_max/results") do
  @the_min_num = params.fetch("min_number").to_f
  @the_max_num = params.fetch("max_number").to_f
  @the_result = rand(@the_min_num...@the_max_num)
  erb(:min_max_results)
end
