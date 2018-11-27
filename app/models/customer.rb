class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    array = name.split(" ")
    first = array[0]
    last = array[1]
    self.all.find {|customer| customer.first_name == first && customer.last_name == last}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.collect {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    array = Review.all.select {|review| review.customer == self}
    array.length
  end

  def restaurants
    reviews = Review.all.select {|review| review.customer == self}
    reviews.collect {|review| review.restaurant}.uniq
  end

end
