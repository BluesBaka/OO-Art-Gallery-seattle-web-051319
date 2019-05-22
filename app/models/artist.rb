class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    
    @@all << self
  end

  def create_painting(title, price, gallery)

     Painting.new(title, self, price, gallery)
  end

  def paintings
    Painting.all.select do |p|
      p.artist == self
    end
  end

  def galleries
    paintings.map do |p|
      p.gallery
    end
  end

  def cities
    paintings.map do |p|
      p.gallery.city
    end
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@all.collect do |a|
       a.years_experience
     end.sum
   end

   def self.most_prolific
     @@all.select do |a|
       binding.pry
       #get the highest number of paintings/years of xp
     end
   end

end
