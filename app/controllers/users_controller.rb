class UsersController < ApplicationController
  before_action :set_user, :authorized, only: %i[auto_login show update destroy]

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)

    return create_user_error unless @user.valid? 

    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: {
        user: @user.username,
        token: token,
        status: true
      }
    else
      render json: {
        status: 'error',
        error: 'Invalid username or password'
      },
        status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end


  def create_user_error
    render json: { error: 'please verify your pasword or name' }
  end

  def login
    @user = User.find_by(username: params[:username])
    return create_user_error unless @user

    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: {
        user: @user.username,
        token: token,
        status: true
      }
    else
      render json: {
        status: 'Invalid username or password'
      }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
