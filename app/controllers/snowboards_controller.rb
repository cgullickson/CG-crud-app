
class SnowboardsController < ApplicationController

  get "/snowboards" do
    redirect_if_not_logged_in
    @snowboards = Snowboard.all
    erb :'snowboards/index'
  end

  get "/snowboards/new" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'snowboards/new'
  end

  get "/snowboards/:id/edit" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @snowboard = Snowboard.find(params[:id])
    erb :'snowboards/edit'
  end

  post "/snowboards/:id" do
    redirect_if_not_logged_in
    @snowboard = snowboard.find(params[:id])
    @snowboard.update(params.select{|k|k=="name" || k=="capacity"})
    redirect "/snowboards/#{@snowboard.id}"
  end

  get "/snowboards/:id" do
    redirect_if_not_logged_in
    @snowboard = Snowboard.find(params[:id])
    erb :'snowboards/show'
  end

  post "/snowboards" do
    redirect_if_not_logged_in
    Snowboard.create(params)
    redirect "/snowboards"
  end

end
