class AdminController < ApplicationController
  def panel
    @users =  User.all.limit(10)
    @media =  Medium.all.limit(10)
  end

  def post_user
    # puts params[:name],  params[:email],  params[:number]
    User.create(name: params[:name], email: params[:email], number: params[:number])
    redirect_to "/admin/panel"
  end

  def post_medium
    Medium.create(name: params[:name], owner_id: params[:owner_id], location: params[:location])
    redirect_to "/admin/panel"
  end

  
  def upload_file
    # puts params
    file = Medium.new
    file.owner_id = 1
    file.name = "goback.txt"
    file.location = params[:file]
    file.save

  end
end
