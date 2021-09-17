class StaticController < ApplicationController
  def home
    render json: { status: 'Welcome to Main' }
  end
end
