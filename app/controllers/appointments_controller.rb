class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    render json: users_upcoming_appointment
  end

  def users_upcoming_appointment
    upcoming_appointment = Appointment.upcoming.sort { |a, b| a.date <=> b.date }
    upcoming_appointment.find_all { | id | id.user_id == logged_in_user.id }
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
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

      # render json: @appointment, status: :created, location: @appointment
    else
      render json: { error: @appointment.errors[:error].first }, status: :unprocessable_entity

      # render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_params
    params.require(:appointment).permit(:date, :user_id, :coach_id)
  end
end
