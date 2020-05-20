class Patient
  attr_accessor :name, :appointment, :doctor
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor)

  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}

  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
