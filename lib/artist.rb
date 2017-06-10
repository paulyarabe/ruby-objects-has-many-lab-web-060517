require 'pry'

class Artist
	attr_accessor :name

	@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
		@@song_count += 1
		song.artist = self
	end

	def add_song_by_name(song)
		new_song = Song.new(song)
		self.add_song(new_song)
	end

	def self.song_count
		@@song_count
	end


end

#put binding.pry in the method
#run rspec when doing your tests.
# it will supply the tests arguments
