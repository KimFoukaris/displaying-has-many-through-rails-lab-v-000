class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_id=(id)
    self.patient = Patient.find(id)
  end

  def patient_id
    self.patient.id
  end

  def doctor_id=(id)
    self.doctor = Doctor.find(id)
  end

  def doctor_id
    self.doctor.id
  end

  private
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
  end
end
