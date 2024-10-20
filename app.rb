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
  erb(:new_random_calc)
end

get("/random/results") do
  @the_min_num = params.fetch("user_min").to_f
  @the_max_num = params.fetch("user_max").to_f
  @the_result = rand(@the_min_num...@the_max_num)
  erb(:random_results)
end


get("/payment/new") do
  erb(:new_payment_calc)
end

get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f
  @the_year = params.fetch("user_year").to_i*12
  @the_principal = params.fetch("user_principal").to_f
  @the_result = (@the_apr/100/12) * @the_principal/(1-(1+(@the_apr/100/12))**(-@the_year))
  erb(:payment_results)
end
