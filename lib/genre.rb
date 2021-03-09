class Genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def songs
        Song.all{|song| song.genre == self}
    end

    def artists
        songs.map{|song| song.artist}
    end
    


end


