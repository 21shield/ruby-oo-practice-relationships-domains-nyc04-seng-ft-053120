class Ride
    @@all = []
    attr_reader :passenger, :driver, :distance
    def initialize (passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.total_distances
        self.all.sum do |ride_instance|
            ride_instance.distance
        end
    end

    def self.average_distance
        self.total_distances/self.all.count 
    end
    
end