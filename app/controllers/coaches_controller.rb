require_relative '../services/authentication_token.rb'

class CoachesController < ApplicationController
  include AuthenticationToken

  before_action :authorized, only: %i[show update destroy]

  def index
    @coaches = Coach.all

    render json: @coaches
  end

  def show
    render json: @coach
  end

  def create
    @coach = Coach.new(coach_params)

    if @coach.save
      render json: @coach, status: :created, location: @coach
    else
      render json: @coach.errors, status: :unprocessable_entity
    end
  end

  def update
    if @coach.update(coach_params)
      render json: @coach
    else
      render json: @coach.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coach.destroy
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require(:coach).permit(:name, :country)
  end
end
