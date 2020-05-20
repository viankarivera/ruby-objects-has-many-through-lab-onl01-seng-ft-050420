class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

end
