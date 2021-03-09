class Artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        songs = []
        Song.all.each do |song|
            if song.artist == self
                songs << song
            end
        end
        return songs
    end

    # has many genres, through songs
    # iterates over that artist's songs and collects the genre of each song.
    def genres
        genres = []
        self.songs.each do |song|
            genres << song.genre
        end
        return genres
    end

end
