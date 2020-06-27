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
    
end