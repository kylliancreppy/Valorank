require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Agent.destroy_all

def set_agent(name, url, rating)
    file = URI.open(url)
    agent = Agent.new(
        name: name,
        rating: rating
        )

    agent.photo.attach(io: file, filename: 'image.png')
    agent.save!
end

agents =  [
    {name: "Jett", photo:"https://wallpapercave.com/wp/wp6404236.png", rating: 5},
    {name: "Viper", photo:"https://wallpapercave.com/wp/wp6477779.png", rating: 5},
    {name: "Raze", photo:"https://wallpapercave.com/wp/wp6489995.png", rating: 5},
    {name: "Omen", photo:"https://wallpapercave.com/wp/wp7065132.jpg", rating: 5},
    {name: "Sova", photo:"https://wallpapercave.com/dwp1x/wp6404372.png", rating: 5},
    {name: "Sage", photo:"https://wallpapercave.com/wp/wp6489880.png", rating: 5},
    {name: "Brimstone", photo:"https://wallpapercave.com/wp/wp6489739.png", rating: 5},
    {name: "Reyna", photo:"https://wallpapercave.com/wp/wp7070205.jpg", rating: 5},
    {name: "Phoenix", photo:"https://wallpapercave.com/wp/wp6497026.jpg", rating: 5},
    {name: "Killjoy", photo:"https://wallpapercave.com/dwp1x/wp7126532.png", rating: 5},
    {name: "Cypher", photo:"https://wallpapercave.com/dwp1x/wp6423514.jpg", rating: 5},
    {name: "Skye", photo:"https://wallpapercave.com/wp/wp7984691.png", rating: 5},
    {name: "Breach", photo:"https://wallpapercave.com/wp/wp6489898.jpg", rating: 5},
    {name: "Astra", photo:"https://wallpapercave.com/wp/wp8686064.jpg",rating: 5},
    {name: "KAY/O", photo:"https://wallpapercave.com/wp/wp9452995.png", rating: 5},
    {name: "Yoru", photo:"https://wallpapercave.com/wp/wp8325702.png", rating: 5},
    {name: "Chamber", photo:"https://wallpapercave.com/dwp1x/wp10197515.jpg", rating: 5}
]

agents.each do |agent|
    set_agent(agent[:name], agent[:photo], agent[:rating])
end