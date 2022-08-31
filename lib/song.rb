class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []



    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

nathans_song = Song.new('new song', 'nathan', 'rock')
tomers_song = Song.new('tomers shitty song', 'tomer', 'rap')
anonymous = Song.new('you will never know', 'anonymous artist', 'rap')

p Song.count