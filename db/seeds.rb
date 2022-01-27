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
    {name: "Jett", photo:"app/assets/images/V/Jett_icon.png", rating: 5},
    {name: "Viper", photo:"app/assets/images/V/Viper_icon.png", rating: 5},
    {name: "Raze", photo:"app/assets/images/V/Raze_icon.png", rating: 5},
    {name: "Omen", photo:"app/assets/images/V/Omen_icon.png", rating: 5},
    {name: "Sova", photo:"app/assets/images/V/Sova_icon.png", rating: 5},
    {name: "Sage", photo:"app/assets/images/V/Sage_icon.png", rating: 5},
    {name: "Brimstone", photo:"app/assets/images/V/Brimstone_icon.png", rating: 5},
    {name: "Reyna", photo:"app/assets/images/V/Reyna_icon.png", rating: 5},
    {name: "Phoenix", photo:"app/assets/images/V/Phoenix_icon.png", rating: 5},
    {name: "Killjoy", photo:"app/assets/images/V/Killjoy_icon.png", rating: 5},
    {name: "Cypher", photo:"app/assets/images/V/Cypher_icon.png", rating: 5},
    {name: "Skye", photo:"app/assets/images/V/Skye_icon.png", rating: 5},
    {name: "Breach", photo:"app/assets/images/V/Breach_icon.png", rating: 5},
    {name: "Astra", photo:"/home/kcreppy/code/kylliancreppy/valorank/app/assets/images/V/Astra_icon.png",rating: 5},
    {name: "KAY/O", photo:"app/assets/images/V/KAYO_icon.png", rating: 5},
    {name: "Yoru", photo:"app/assets/images/V/Yoru_icon.png", rating: 5},
    {name: "Chamber", photo:"app/assets/images/V/Chamber_icon.png", rating: 5},
    {name: "Neon", photo:"app/assets/images/V/Neon_icon.png", rating: 5}
]

agents.each do |agent|
    set_agent(agent[:name], agent[:photo], agent[:rating])
end