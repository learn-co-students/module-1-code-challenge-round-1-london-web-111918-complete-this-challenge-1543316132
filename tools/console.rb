require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dave = Customer.new("David", "Brent")
andy = Customer.new("Andy", "Hall")
pete = Customer.new("Peter", "Pan")
sarah = Customer.new("Sarah", "Jones")
david = Customer.new("David", "Johnson")

res1 = Restaurant.new("Nandos")
res2 = Restaurant.new("Pret")
res3 = Restaurant.new("McDonalds")
res4 = Restaurant.new("Wasabi")

rev1 = Review.new(dave, res4, 4, "Great")
rev2 = Review.new(david, res3, 5, "Best place ever!!")
rev3 = Review.new(sarah, res2, 1, "The worst")
rev4 = Review.new(andy, res1, 2, "Pretty terrible")
rev5 = Review.new(pete, res1, 5, "Fantastic")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
