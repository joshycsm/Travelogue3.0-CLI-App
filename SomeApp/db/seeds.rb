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

finn_japan = Recommendation.create(attraction: "Kit Kats in Tokyo")
josh_japan = Recommendation.create(attraction: "Jiro Dreams of Sushi Restaurant in Tokyo")
martha_syria = Recommendation.create(attraction: "Citadel of Aleppo")
brian_bolivia = Recommendation.create(attraction: "Uyuni Salt Flats")
josh_italy = Recommendation.create(attraction: "Leaning Tower of Pisa")
