class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

def paintings

    Painting.all.select do |p|

      p.gallery == self
    end
  end

  def artists
    paintings.map do |p|
      p.artist
    end
  end

    def artists_names
      artists.map do |a|
          a.name
      end
    end

    def most_expensive_painting
      paintings.max_by do |p|
         p.price
       end
         #do some sorting and return the highest price
       end

  def self.all
    @@all
  end

end
