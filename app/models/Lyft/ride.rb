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

end