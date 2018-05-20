class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  #def index
  #  redirect_to new_appointment_path
#  end

  def create
    @appointment = Appointment.create(:appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  def appointment_params
    params.require(:appointment).permit(
      :appointment_datetime,
      doctor_attributes: [
      :id,
      :name,
      :department,
      :patient
    ],
      patient_attributes: [
        :id,
        :name,
        :age
      ]
    )
  end

end
