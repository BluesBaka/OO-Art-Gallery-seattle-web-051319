class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    total_price = 0
      @@all.each do |p|
        total_price += p.price.to_i
      end
      total_price
  end

  def self.all
    @@all
  end
end
