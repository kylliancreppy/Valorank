require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Agent.destroy_all
Weapon.destroy_all

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
    {name: "Viper", photo:"https://static.wikia.nocookie.net/valorant/images/5/5f/Viper_icon.png/revision/latest/scale-to-width-down/256?cb=20201128234408", rating: 5},
    {name: "Raze", photo:"app/assets/images/V/Raze_icon.png", rating: 5},
    {name: "Omen", photo:"app/assets/images/V/Omen_icon.png", rating: 5},
    {name: "Sova", photo:"app/assets/images/V/Sova_icon.png", rating: 5},
    {name: "Sage", photo:"app/assets/images/V/Sage_icon.png", rating: 5},
    {name: "Brimstone", photo:"app/assets/images/V/Brimstone_icon.png", rating: 5},
    {name: "Reyna", photo:"https://static.wikia.nocookie.net/valorant/images/b/b0/Reyna_icon.png/revision/latest/scale-to-width-down/256?cb=20200607180311", rating: 5},
    {name: "Phoenix", photo:"app/assets/images/V/Phoenix_icon.png", rating: 5},
    {name: "Killjoy", photo:"app/assets/images/V/Killjoy_icon.png", rating: 5},
    {name: "Cypher", photo:"app/assets/images/V/Cypher_icon.png", rating: 5},
    {name: "Skye", photo:"app/assets/images/V/Skye_icon.png", rating: 5},
    {name: "Breach", photo:"app/assets/images/V/Breach_icon.png", rating: 5},
    {name: "Astra", photo:"/home/kcreppy/code/kylliancreppy/valorank/app/assets/images/V/Astra_icon.png",rating: 5},
    {name: "KAY/O", photo:"app/assets/images/V/KAYO_icon.png", rating: 5},
    {name: "Yoru", photo:"https://static.wikia.nocookie.net/valorant/images/d/d4/Yoru_icon.png/revision/latest/scale-to-width-down/256?cb=20210112211830", rating: 5},
    {name: "Chamber", photo:"app/assets/images/V/Chamber_icon.png", rating: 5},
    {name: "Neon", photo:"app/assets/images/V/Neon_icon.png", rating: 5},
    {name: "Fade", photo:"https://static.wikia.nocookie.net/valorant/images/a/a6/Fade_icon.png/revision/latest/scale-to-width-down/256?cb=20220427140722", rating: 5}
]

agents.each do |agent|
    set_agent(agent[:name], agent[:photo], agent[:rating])
end


def set_weapon(name, url, price)
    file = URI.open(url)
    weapon = Weapon.new(
        name: name,
        price: price
        )

    weapon.photo.attach(io: file, filename: 'image.png')
    weapon.save!
end

weapons = [
    {name: "Classic", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt25bf56ede3e3c57c/5eb281c42278aa3e8d0ba7fa/classic.png", price: 0},
    {name: "Shorty", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt7b13117b3a4912a7/5eb281ca5e05b51483afd6bc/shorty.png", price: 150},
    {name: "Frenzy", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt97e5c377459c2f3b/5eb281c43b09c042ddca13a1/frenzy.png", price: 450},
    {name: "Ghost", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltc4788d390015fb7c/5eb281c4105ab84c3815e164/ghost.png", price: 500},
    {name: "Sheriff", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt3bbed29a5475c7d4/5eb281ca2278aa3e8d0ba7fe/sheriff.png", price: 800},
    {name: "Bucky", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt2cd5308e8bdfcc8c/5eb281c334a9963e8f9599de/bucky.png", price: 850},
    {name: "Stinger", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt55951cb43513b87d/5eb7c2209c5d3e37e05f27b6/stinger.png", price: 950},
    {name: "Marshal", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt545be89167b88e87/5eb281c4c7007e13a0530dd7/marshal.png", price: 950},
    {name: "Ares", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt371bee690082f494/5eb281c3e11e6a13a6f613e9/ares.png", price: 1550},
    {name: "Spectre", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt8a6f9eb97f755412/5eb281cae11e6a13a6f613ed/spectre.png", price: 1600},
    {name: "Judge", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt82404f7b88f8c612/5eb281c45050514d1a507146/judge.png", price: 1600},
    {name: "Bulldog", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltd4a396bf5a06e6b4/5eb281c4edfeb076e2050387/bulldog.png", price: 2050},
    {name: "Guardian", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltd78ee0533f30e0a8/5eb281c4402b8b4d13a566dc/guardian.png", price: 2250},
    {name: "Phantom", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt04ac3b5158b8466a/5eb281caa44a154c3ef84a82/phantom.png", price: 2900},
    {name: "Vandal", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt323df4a0d8210605/5eb281cb3b09c042ddca13a5/vandal.png", price: 2900},
    {name: "Odin", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt0884ed7405d3646c/5eb281c38f7a7c3f6ec725e1/odin.png", price: 3200},
    {name: "Operator", photo:"https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt3e6bf41bd01ca11e/5eb281ca24400043b65016ba/operator.png", price: 4700},
]   

    weapons.each do |weapon|
        set_weapon(weapon[:name], weapon[:photo], weapon[:price])

end