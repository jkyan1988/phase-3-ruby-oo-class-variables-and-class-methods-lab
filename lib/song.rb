require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists =[]
    @@genres =[]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_obj = {}
        @@genres.each do |genre|
            if genre_count_obj.key?(genre)
                genre_count_obj[genre] += 1
            else
                genre_count_obj[genre] = 1
            end
        end
        genre_count_obj
    end

    def self.artist_count
        @@artists.tally
    end



end