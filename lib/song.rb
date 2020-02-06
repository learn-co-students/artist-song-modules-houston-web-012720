require 'pry'

module Memorable 
  module ClassMethods
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

    def reset_all
      all.clear
    end 

    def count 
      all.count 
    end

  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(" ","-")
    end
  end
end

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
