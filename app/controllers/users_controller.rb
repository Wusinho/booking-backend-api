require_relative '../services/authentication_token.rb'

class UsersController < ApplicationController
  include AuthenticationToken

  before_action :authorized, only: %i[auto_login show update destroy]


  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    p @user, '!!!!!!!!USER'
    return user_error unless @user.valid? 

    if @user.valid?
      token = encode_token({ user_id: @user.id })
      # token = encode(@user)

      render json: {
        user: @user.username,
        token: token,
        status: true
      }
    end
  end

  def user_error
    render json: { error: 'please verify your pasword or name' }
  end

  def login
    @user = User.find_by(username: params[:username])
    return user_error unless @user

    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: {
        user: @user.username,
        token: token,
        status: true
      }
    end
  end

  private



  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
