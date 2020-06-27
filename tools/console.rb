require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Charlie")  

p2 = Passenger.new("Cha")
p3 = Passenger.new("Charl")
p4 = Passenger.new("Chaaaaaz")
p5 = Passenger.new("Arlie")

d1 = Driver.new ("Chen")
d2 = Driver.new ("Ramirez")
d3 = Driver.new ("Lee")
d4 = Driver.new ("Pan")
d5 = Driver.new ("Bao")


r1 = Ride.new(p1, d1, 100)
r2 = Ride.new(p1, d1, 100)
r3 = Ride.new(p2, d2, 100)
r4 = Ride.new(p3, d2, 100)
r5 = Ride.new(p4, d3, 100)
r6 = Ride.new(p5, d3, 100)
r7 = Ride.new(p5, d5, 100)



Pry.start


