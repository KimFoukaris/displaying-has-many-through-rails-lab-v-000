class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointment
  #accepts_nested_attributes_for :doctors

  def doctor_id=(id)
    self.doctor = Doctor.find(id)
  end

  def doctor_id
    self.doctor.id
  end
end
