# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
  {email: "Lost@test.com", password_digest: "password", username: "JaneDoe"},
  {email: "EJeast@test.com", password_digest: "password", username: "EJeast"}
])

Location.create!([
  {state: "AL", state_bird: "Northern Flicker", location_comments: ""},
  {state: "AK", state_bird: "Willow Ptarmigan", location_comments: ""},
  {state: "AZ", state_bird: "Cactus Wren", location_comments: ""},
  {state: "AR", state_bird: "Mockingbird", location_comments: ""},
  {state: "CA", state_bird: "California Quail", location_comments: ""},
  {state: "CO", state_bird: "Lark Bunting", location_comments: ""},
  {state: "CT", state_bird: "American Robin", location_comments: ""},
  {state: "DE", state_bird: "Blue Hen Chicken", location_comments: ""},
  {state: "FL", state_bird: "Mockingbird", location_comments: ""},
  {state: "GA", state_bird: "Bobwhite Quail", location_comments: ""},
  {state: "HI", state_bird: "Nene", location_comments: ""},
  {state: "ID", state_bird: "Peregrine Falcon", location_comments: ""},
  {state: "IL", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "IN", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "IA", state_bird: "Eastern Goldfinch", location_comments: ""},
  {state: "KS", state_bird: "Western Meadowlark", location_comments: ""},
  {state: "KY", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "LA", state_bird: "Brown Pelican", location_comments: ""},
  {state: "ME", state_bird: "Brown Pelican", location_comments: ""},
  {state: "MD", state_bird: "Baltimore Oriole", location_comments: ""},
  {state: "MA", state_bird: "Wild Turkey", location_comments: ""},
  {state: "MI", state_bird: "Robin Redbreast", location_comments: ""},
  {state: "MN", state_bird: "Common Loon", location_comments: ""},
  {state: "MS", state_bird: "Wood Duck", location_comments: ""},
  {state: "MO", state_bird: "Eastern Bluebird", location_comments: ""},
  {state: "MT", state_bird: "Western Meadowlark", location_comments: ""},
  {state: "NE", state_bird: "Western Meadowlark", location_comments: ""},
  {state: "NV", state_bird: "Mountain Bluebird", location_comments: ""},
  {state: "NH", state_bird: "Purple Finch", location_comments: ""},
  {state: "NJ", state_bird: "Eastern Goldfinch", location_comments: ""},
  {state: "NM", state_bird: "Greater Roadrunner", location_comments: ""},
  {state: "NY", state_bird: "Eastern Bluebird", location_comments: ""},
  {state: "NC", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "ND", state_bird: "Western Meadowlark", location_comments: ""},
  {state: "OH", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "OK", state_bird: "Scissor-tailed Flycatcher", location_comments: ""},
  {state: "OR", state_bird: "Western Meadowlark", location_comments: ""},
  {state: "PA", state_bird: "Ruffed Grouse", location_comments: ""},
  {state: "RI", state_bird: "Rhode Island Red", location_comments: ""},
  {state: "SC", state_bird: "Carolina Wren", location_comments: ""},
  {state: "SD", state_bird: "Ring-Necked Pheasant", location_comments: ""},
  {state: "TN", state_bird: "Bobwhite Quail", location_comments: ""},
  {state: "TX", state_bird: "Mockingbird", location_comments: ""},
  {state: "UT", state_bird: "California Gull", location_comments: ""},
  {state: "VT", state_bird: "Hermit Thrush", location_comments: ""},
  {state: "VA", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "WA", state_bird: "Willow Goldfinch", location_comments: ""},
  {state: "WV", state_bird: "Northern Cardinal", location_comments: ""},
  {state: "WI", state_bird: "American Robin", location_comments: ""},
  {state: "WY", state_bird: "Western Meadowlark", location_comments: ""},
  
])