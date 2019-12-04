

#create genres
if Genre.count > 0
  puts "You already have data in the database.You can't run this command at this time."
else
  Genre.create([{name:"Comedy",description: "Includes all comedy and satires"},{name: "Action",description: "All action and thrillers"}])

  #create movies in each genre
  Movie.create([{title: "The dressmaker",genre: Genre.first,number_in_stock: 10,daily_rental_rate: 4.5},{title: "Winter's war",genre: Genre.last,number_in_stock: 4,daily_rental_rate: 4}])

end
