module Findable 
    module ClassMethods
        def find_by_name(name)
          all.find{|artist| artist.name ==  name}
        end
    
        def reset_all
          all.clear
        end
    
        def count 
          all.count
        end
    
    end
    
    module InstanceMethods
        def add_song(song)
          self.songs << song
          song.artist = self 
        end
    
        def add_songs(songArr)
          songArr.each{|song| add_song(song)}
        end
    
        def to_param
          name.downcase.gsub(" ","-")
        end
    end
end
