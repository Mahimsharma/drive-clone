class LoginController < ApplicationController
  def index
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.number = params[:number]
    @user.password = params[:password]
    @user.password_confirmation = params[:password]
    
    if @user.save
      redirect_to homepage_index_path
    else
      render json: {
        key: 'Failure',
        message: 'Something went wrong! Please try again'
    }, status: :forbidden
    end
  end

  def authenticate
    @user = User.find_by_email(params[:email])
    if !@user
      render json: {
          key: 'username',
          message: 'No user can be found with that Username'
      }, status: :forbidden
    else    
      isAuthed = @user.try(:authenticate, params['password'])
      if !isAuthed
          render json: {
              key: 'password',
              message: 'Incorrect Password'
              }, status: :forbidden
      else
          render json: {
              id: @user.id,
              username: @user.name,
          }
      end
    end
  end

  def update
  end

  def destroy
  end

  def new
  end

  def edit
  end
end
