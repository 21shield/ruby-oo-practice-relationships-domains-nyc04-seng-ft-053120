class Actor
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
    def self.actors_characters
        char = {}
        Character.all.each do |character_instance|
            if char[character_instance.actor] && !char[character_instance.actor].include?(character_instance.name)
                char[character_instance.actor] << character_instance.name
            elsif !char[character_instance.actor]
                char[character_instance.actor]  = []
                char[character_instance.actor] << character_instance.name
            end
        end
        char
    end
    def self.most_characters
        self.actors_characters.sort_by{|key, value| value.length}.last.first
    end

end