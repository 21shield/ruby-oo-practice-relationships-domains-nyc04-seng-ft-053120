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

#---------# / IMDB / #---------- - --#

m1 = Movie.new("Avengers")
m2 = Movie.new("Away From Home")
m3 = Movie.new("Moana")
m4 = Movie.new("Avengers")


s2 = Show.new ("Community")
s3 = Show.new ("The Politician")
s1 = Show.new ("Avengers")

rob = Actor.new("R.D.J")
tom = Actor.new("Tom Holland")
kyl = Actor.new("Kylie Jenner")
scar = Actor.new("Scarelett John")
gywn = Actor.new("Gwyneth Paltrow")
rock = Actor.new("Dwayne Johnson")

c1 = Character.new("Spidey", m1, tom)
c2 = Character.new("Ironman", m2, rob)
c3 = Character.new("Widow", m1, scar)
c4 = Character.new("Britta", s2, kyl)
c5 = Character.new("Mom", s3, gywn)
c6 = Character.new("Maui", m3, rock)
c7 = Character.new("Pepper Pots", m2, gywn)
c7 = Character.new("blue man", m2, tom)

c8 = Character.new("Spidey", m2, tom)


Pry.start


