# HikerTrail.destroy_all
# Hiker.destroy_all
# Trail.destroy_all

# hiker1 = Hiker.create(name: "Rocky Pitto", age: 28)
# hiker2 = Hiker.create(name: "Finn Thye", age: 20)
# hiker3 = Hiker.create(name: "Parker Bacall", age: 22)
# hiker4 = Hiker.create(name: "Jason Hundal", age: 23)

# trail1 = Trail.create(name: "Some Trail", length: 1.54)
# trail2 = Trail.create(name: "Big Trail", length: 2.53)
# trail3 = Trail.create(name: "Small Trail", length: 9.54)

# HikerTrail.create(hiker_id: hiker1.id, trail_id: trail1.id)
# HikerTrail.create(hiker: hiker1, trail: trail2)
# HikerTrail.create(hiker: hiker2, trail: trail1)
# HikerTrail.create(hiker: hiker2, trail: trail1)
# HikerTrail.create(hiker: hiker3, trail: trail2)
# HikerTrail.create(hiker: hiker4, trail: trail3)

# trail1.hikers.create(name: "John Rogala", age:26)

Country.destroy_all
Traveler.destroy_all
Recommendation.destroy_all

japan = Country.create(name: "Japan")
native_america = Country.create(name: "Native America")
syria = Country.create(name: "Syria")
bolivia = Country.create(name: "Bolivia")
italy = Country.create(name: "Italy")

finn = Traveler.create(name: "Finn")
josh = Traveler.create(name: "Josh")
martha = Traveler.create(name: "Martha")
brian = Traveler.create(name: "Brian")
peter_pan = Traveler.create(name: "Peter Pan")

finn_japan = Recommendation.create(attraction: "Kit Kat in Tokyo", traveler: finn, country: japan)
josh_japan = Recommendation.create(attraction: "Jiro Dreams of Sushi Restaurant in Tokyo", traveler: josh, country: japan)
martha_japan = Recommendation.create(attraction: "Citadel of Aleppo", traveler: martha, country: syria)
brian_japan = Recommendation.create(attraction: "Uyuni Salt Flats", traveler: brian, country: bolivia)
josh_italy = Recommendation.create(attraction: "Leaning Tower of Pisa", traveler: josh, country: italy)