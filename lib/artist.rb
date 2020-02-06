require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Findable::ClassMethods
  include Findable::InstanceMethods

  @@artists = []

  def initialize
    self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end
end



