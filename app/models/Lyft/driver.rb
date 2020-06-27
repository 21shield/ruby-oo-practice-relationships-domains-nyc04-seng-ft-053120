class Driver
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
            ride_instance.driver == self
        end
    end

    def passengers
        rides.map {|ride| ride.passenger}.uniq
    end

    def total_mileage
        rides.sum do |ride|
            ride.distance
        end
    end
    
    def self.mileage_cap(distance)
        Driver.all.select do |driver|
            driver.total_mileage >= distance
        end
    end
end