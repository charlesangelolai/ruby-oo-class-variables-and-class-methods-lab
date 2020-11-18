require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre

        @name = name
        @artist = artist
        @genre = genre
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
        genres_hash = Hash.new

        @@genres.each do |key|
            if !genres_hash.has_key?(key)
                genres_hash[key] = 1
            else
                genres_hash[key] += 1
            end
        end

        genres_hash
    end

    def self.artist_count
        artists_hash = Hash.new

        @@artists.each do |key|
            if !artists_hash.has_key?(key)
                artists_hash[key] = 1
            else
                artists_hash[key] += 1
            end
        end

        artists_hash
    end
end