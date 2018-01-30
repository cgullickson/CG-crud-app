
class snowboardsController < ApplicationController

  get "/snowboards" do
    redirect_if_not_logged_in
    @snowboards = snowboard.all
    erb :'_snowboards/index'
  end

  get "/snowboards/new" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'_snowboards/new'
  end

  get "/snowboards/:id/edit" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @snowboard = snowboard.find(params[:id])
    erb :'_snowboards/edit'
  end
