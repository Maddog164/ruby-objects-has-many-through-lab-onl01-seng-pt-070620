class Patient

  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, Doctor)
    Appointment.new(date, self, Doctor)
  end

end
