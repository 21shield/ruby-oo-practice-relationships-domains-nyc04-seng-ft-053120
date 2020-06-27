class Passenger
    @@all = []
    attr_reader :name
    def initialize (name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def rides
        Ride.all.select do |ride_instance|
            ride_instance.passenger == self
        end
    end  
    
    def drivers
        self.rides.map do |ride_instance|
            ride_instance.driver
        end
    end
    
    def total_distance
        self.rides.sum do |rides_instance|
            rides_instance.distance
        end
    end

    def self.premium_members
        self.all.select do |passenger_instance|
            passenger_instance.total_distance >= 100    
        end
    end
end