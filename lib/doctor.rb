require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date,patient,self)
    #binding.pry

  end

  def appointments
    #binding.pry
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  #def songs
  #  Song.all.select do |song|
  #    song.artist == self
  #  end
  #end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
  #    song.genre
  #  end
  #end

end
