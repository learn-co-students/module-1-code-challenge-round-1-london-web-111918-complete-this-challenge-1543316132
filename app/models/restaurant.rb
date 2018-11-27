class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect {|review| review.customer}.uniq
  end

  def average_star_rating
    all_ratings = reviews.collect {|review| review.rating}
    total = all_ratings.reduce(:+)
    total/(all_ratings.length).to_f
  end

  def longest_review
    longest = reviews.max_by {|review| review.content}
    longest.content
  end

end
