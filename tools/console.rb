require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

########## AIRBNB SECTION ##############

# guests
mark = Guest.new("Mark")
patricia = Guest.new("Patricia")
jake = Guest.new("Jake")
margot = Guest.new("Margot")

# listings

berlin_loft = Listing.new("Berlin", "loft")
berlin_hostel = Listing.new("Berlin", "hostel")
paris_hostel = Listing.new("Paris", "hostel")
london_hostel = Listing.new("London", "hostel")
fjords_yurt = Listing.new("Iceland", "yurt")


# trips

mark_berlin_loft = Trip.new(mark, berlin_loft)
mark_berlin_hostel = Trip.new(mark, berlin_hostel)
patricie_fjord = Trip.new(patricia, fjords_yurt)
jake_paris_hostel = Trip.new(jake, paris_hostel)
margot_lond_hostel = Trip.new(margot, london_hostel) 
mark_fjord = Trip.new(mark, fjords_yurt)


############ BAKERY ###########


# bakeries
shmackery = Bakery.new("Shmackerys")
levain = Bakery.new("Levain")
aubergine = Bakery.new("Aubergine")


# ingredients

brown_sugar = Ingredient.new("brown sugar", 200)
white_sugar = Ingredient.new("white sugar", 100)
flour = Ingredient.new("All Purpose Flour", 60)
whole_wheat_flour = Ingredient.new("Whole Wheat Flour", 50)
chocolate_chips = Ingredient.new("Chocolate chips", 240)
salt = Ingredient.new("salt", 15)
cocoa_powder = Ingredient.new("Cocoa powder", 30)
cinnamon = Ingredient.new("Cinnamon", 5)
butter = Ingredient.new("butter", 45)
shortening = Ingredient.new("shortening",55)

# recipes
snickerdoodles = [brown_sugar,white_sugar,flour,cinnamon,butter]
cc_cookies= [brown_sugar,white_sugar,flour,chocolate_chips,butter]
brownies= [white_sugar,flour,cocoa_powder,chocolate_chips,butter, salt]
bread = [flour,whole_wheat_flour,salt]
cake = [shortening,butter,flour,white_sugar]

# desserts

sh_snick = Dessert.new(shmackery, "Snickerdoodles", *snickerdoodles)
sh_cc = Dessert.new(shmackery, "Chocolate Chip Cookies", *cc_cookies)
levain_cc = Dessert.new(levain, "Chocolate Chip Cookies", *cc_cookies)
levain_brownies = Dessert.new(levain, "brownies", *brownies)
aub_bread = Dessert.new(aubergine, "bread", *bread)
aub_cake = Dessert.new(aubergine, "cake", *cake)
aub_scone = Dessert.new(aubergine, "scone", shortening, whole_wheat_flour,flour,butter,salt)

########## LYFT ###################


binding.pry
