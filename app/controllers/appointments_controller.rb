require_relative '../services/authentication_token.rb'

class AppointmentsController < ApplicationController
  include AuthenticationToken

  before_action :authorized, only: %i[show update destroy]

  def index
    user_filter = Appointment.current_user_appointments(logged_in_user.id)
    render json: user_filter
  end

  def show
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(
      coach_id: params[:coach_id],
      date: params[:date],
      role: params[:role],
      champion: params[:champion],
      user_id: logged_in_user.id
    )

    if @appointment.save
      render json: @appointment

    else
      render json: { error: 'error' }, status: :unprocessable_entity

    end
  end

  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :user_id, :coach_id)
  end
end
