require 'sinatra'
require 'sinatra/reloader'

#get'/' do
#  "hello world"
#end

def link_to_tcplot_img(probe)
  "http://133.48.62.140/users/shige/flygerm/plot_img/#{probe}.pcdev.plot1.png"
end

get '/' do
#  if params[:query]
#    @probe = params[:query].strip
#    @title = @probe
#    @img_url = link_to_tcplot_img(@probe)
#  else
#  end
  erb :index
end

post '/show' do
  @probe = params[:query].strip
  @title = "FlygermMA: #{@probe}"
  @img_url = link_to_tcplot_img(@probe)
  erb :index
end
