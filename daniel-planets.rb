planets = [
  {name: "Mercury",index_from_sun: 1,distance_from_sun: 0.4,
   mass: 0.06,date_discovered: "2nd millenium B.C.E.",
   number_of_moons: 0,days_in_a_year: 87.97},

  {name: "Venus",index_from_sun: 2,distance_from_sun: 0.7,
   mass: 0.82,date_discovered: "2nd millenium B.C.E.",
   number_of_moons: 0,days_in_a_year: 224.7},

  {name: "Earth",index_from_sun: 3,distance_from_sun: 1,
   mass: 1,date_discovered: "......",
   number_of_moons: 1,days_in_a_year: 365.26},

  {name: "Mars",index_from_sun: 4,distance_from_sun: 1.5,
   mass: 0.11,date_discovered: "2nd millenium B.C.E.",
   number_of_moons: 2,days_in_a_year: 686.98},

  {name: "Jupiter",index_from_sun: 5,distance_from_sun: 5.2,
   mass: 317.8,date_discovered: "2nd millenium B.C.E.",
   number_of_moons: 67,days_in_a_year: 4332.82},

  {name: "Saturn",index_from_sun: 6,distance_from_sun: 9.5,
   mass: 95.2,date_discovered: "2nd millenium B.C.E.",
   number_of_moons: 62,days_in_a_year: 10755.7},

  {name: "Uranus",index_from_sun: 7,distance_from_sun: 19.2,
   mass: 14.6,date_discovered: "April 26, 1781",
   number_of_moons: 27,days_in_a_year: 30687.15},

  {name: "Neptune",index_from_sun: 8,distance_from_sun: 30.1,
   mass: 17.2,date_discovered: "January 24, 1801",
   number_of_moons: 14,days_in_a_year: 60190.03}
]

class Planet #now attributes can come from constructor
  attr_accessor :name,
                :index_from_sun,
                :distance_from_sun, #in AU ('Astronomical Units')
                :mass, #relative to mass of Earth
                :date_discovered,
                :number_of_moons,
                :days_in_a_year #Earth days

  def initialize(p)
    @name = p[:name]
    @index_from_sun = p[:index_from_sun]
    @distance_from_sun = p[:distance_from_sun]
    @mass = p[:mass]
    @date_discovered = p[:date_discovered]
    @number_of_moons = p[:number_of_moons]
    @days_in_a_year = p[:days_in_a_year]
  end
end

all_planets = planets.map {|planet_hash| Planet.new planet_hash}
#what happens if we instantiate but don't assign to a variable?

puts all_planets.first.class
# ^this works - so we know Planet class has been created!

# puts all_planets.first.name
# ^this works - call Planet class methods on invdiv Planet objects

# all_planets.each {|p| puts p.name}
# ^this works - call Pl class methods on Pl objects w/ iterator

class SolarSystem

  def initialize(planets)
    @planets = planets #instance variable calls on ... hash? Bookis, let's discuss!
  end

  def planets
    @planets
  end

end

ss = SolarSystem.new(planets)

puts ss.class
# ^this works - so we know instance of SolarSystem class exists!

puts ss.planets.first[:name]
# ^this works but is confusing. Is this how msg cycle is working?
# 1)Call SolarSystem class method 'planets' on instance of SolSys
# 1a)which creates.... [need to continue thinking through this]

# don't think I need the below code any more.
# puts SolarSystem.class # <- class

# class SolarSystem
#   attr_accessor :planets
#
#   def initialize(attrs)
#     @planets = attrs[:planets]
#   end
# end

###############################################################

# v2: user can query index of planets

# puts
# puts "Welcome to PlanetApp!\n\n"
#
# while true
#   puts "Enter a planet's number to learn more, or 86 to exit\n\n"
#   planets.map {|p| p.name}
#   new_arr = planets.map {|p| "#{p.index_from_sun} - #{p.name}"}
#   puts new_arr
#   puts "86 - Exit"
#   puts
#
#   input = gets.chomp
#
#   if input == "86"
#
#     puts "\nThanks for using PlanetApp!\n"
#     exit
#
#   else
#
#     display = planets[input.to_i-1]
#
#     planet_details =
#       puts "\n\nHere are some facts about #{display.name}:\n
#       \t~* Index from Sun: #{display.index_from_sun}
#       \t~* Distance from Sun in AU ('Astronomical Units'): #{display.distance_from_sun}
#       \t~* Mass (relative to mass of Earth): #{display.mass}
#       \t~* Date Discovered: #{display.date_discovered}
#       \t~* Number of moons: #{display.number_of_moons}
#       \t~* Days in a year (in Earth days): #{display.days_in_a_year}\n"
#
#     puts planet_details
#
#   end
#
# end

########################################################################

# v?: God mode available: user can search index or create own planet

# [reorg all to if/elsif/else/end block, similar to the one in dinner party app]

# puts "Do you want to create a planet or search the library of planets?"

# new_planet_count = 0
#
# until new_planet_count == 2
#
#   puts "What do you want to call the planet?"
#
#   name = gets.chomp
#
#   puts "What is the mass of the planet?"
#
#   mass = gets.chomp
#
# [insert other questions to define attributes of new planet]
#
#   p = Planet.new(name,mass)
#   solar_system.push(p)
#   planet_count += 1
# @end = (new_planet_count == 2) "Sorry, no more room in the solar system!"
# end
