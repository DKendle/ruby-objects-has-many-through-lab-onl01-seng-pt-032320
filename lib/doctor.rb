require "pry"
class Doctor
  attr_accessor :name, :appointments, :patients


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#doc = Doctor.new("Sam")
def self.all
  @@all
end
    #binding.pry
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

# doctor_obj.appointments
# =>  [array with all appts whose doctor == doctor_obj]


  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.map {|appt| appt.patient}
  end
# doctor_obj.patients


end
