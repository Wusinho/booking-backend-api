class AppointmentsController < ApplicationController
  before_action :set_appointment, :authorized, only: %i[show update destroy]

  def index
    render json: users_upcoming_appointment
  end

  def users_upcoming_appointment
    upcoming_appointment = Appointment.upcoming.sort { |a, b| a.date <=> b.date }
    upcoming_appointment.find_all { |id| id.user_id == logged_in_user.id }
  end

  def show
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(
      user_id: logged_in_user.id,
      coach_id: params[:coach_id],
      date: params[:date],
      role: params[:role],
      champion: params[:champion]
    )

    if @appointment.save
      render json: @appointment

    else
      render json: { error: @appointment.errors[:error].first }, status: :unprocessable_entity

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
