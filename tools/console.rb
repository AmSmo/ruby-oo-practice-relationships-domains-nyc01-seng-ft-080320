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

# driver

minnie = Driver.new("Minnie")
tony = Driver.new("Tony")
tiny = Driver.new("Tiny")
muriel = Driver.new("Muriel")

# passengers

adam = Passenger.new("Adam")
alex = Passenger.new("Alex")
beth = Passenger.new("Beth")
lucas = Passenger.new("Lucas")

# rides

to_queens = Ride.new(tony, adam, 40)
to_queens2 = Ride.new(tiny, adam, 43)
to_brooklyn = Ride.new(minnie, alex, 60)
to_brooklyn2 = Ride.new(minnie, beth, 67)
staten_island = Ride.new(muriel, lucas, 130)

########## IMDB

# movies
simpsons_movie = Movie.new("The Simpsons Movie")
avengers = Movie.new("Avengers")
charlie_factor = Movie.new("Charlie and the Chocolate Factory")

# shows

simpsons_tv = Show.new("Simpsons")
jeopardy = Show.new("Jeopardy")

# actors
# breaking down simpsons actors
dan = Actor.new("Dan Castellaneta")
nancy = Actor.new("Nancy Cartwright")
yeardley = Actor.new("Yeardley Smith")
#jeopardy actor
trebek = Actor.new("Alex Trebek")

#avengers actors
downey = Actor.new("Robert Downey Jr.")
evans = Actor.new("Chris Evans")
scarjo = Actor.new("Scarlett Johansson")
jackson = Actor.new("Samuel L. Jackson")

#charlie actors
gene = Actor.new("Gene Wilder")
albertson = Actor.new("Jack Albertson")
dawn_cole = Actor.new("Julie Dawn Cole")

#episodes

simpsons_ep1 = Episode.new("Simpsons Roastin on an Open Fire", simpsons_tv)
simpsons_ep2 = Episode.new("Bart the Genius", simpsons_tv) 
simpsons_ep3 = Episode.new("Homer's Odyssey",simpsons_tv)
jeopary_ep1 = Episode.new("A", jeopardy)
jeopary_ep2 = Episode.new("L", jeopardy)
jeopary_ep3 = Episode.new("E", jeopardy)
jeopary_ep4 = Episode.new("X", jeopardy)

#simpsons  characters
homer_tv1 = Character.new("Homer", dan, simpsons_ep1)
homer_tv2 = Character.new("Homer", dan, simpsons_ep2)
homer_tv3 = Character.new("Homer", dan, simpsons_ep3)
homer_movie = Character.new("Homer", dan, simpsons_movie)
bart_tv1 = Character.new("Bart", nancy, simpsons_ep1)
bart_tv2 = Character.new("Bart", nancy, simpsons_ep2)
bart_tv3 = Character.new("Bart", nancy, simpsons_ep3)
bart_movie = Character.new("Bart", nancy, simpsons_movie)
lisa_tv1 = Character.new("Lisa", yeardley, simpsons_ep1)
lisa_tv2 = Character.new("Lisa", yeardley, simpsons_ep2)
lisa_tv3 = Character.new("Lisa", yeardley, simpsons_ep3)
lisa_movie = Character.new("Lisa", yeardley, simpsons_movie)
#jeopardy character
alex_trebek1 = Character.new("Alex Trebek", trebek, jeopardy)
alex_trebek2 = Character.new("Alex Trebek", trebek, jeopardy)
alex_trebek3 = Character.new("Alex Trebek", trebek, jeopardy)
alex_trebek4 = Character.new("Alex Trebek", trebek, jeopardy)

ironman = Character.new("Ironman", downey, avengers)
c_america = Character.new("Captain America", evans, avengers)
c_america = Character.new("Captain America", evans, avengers)
c_america = Character.new("Captain America", evans, avengers)


binding.pry
