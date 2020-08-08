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
    binding.pry
    Appointments.all.select do |appointment|
      appointment.doctor == self
    end
  end

  #def songs
  #  Song.all.select do |song|
  #    song.artist == self
  #  end
  #end

  #def genres
  #  songs.map do |song|
  #    song.genre
  #  end
  #end

end
