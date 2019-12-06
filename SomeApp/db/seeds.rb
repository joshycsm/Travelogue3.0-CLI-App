Country.destroy_all
Traveler.destroy_all
Recommendation.destroy_all

japan = Country.create(name: "japan")
<<<<<<< HEAD
native_america = Country.create(name: "native America")
=======
native_america = Country.create(name: "native america")
>>>>>>> 930f7307b370fcb84904e0b2a76ac3241286d7b9
syria = Country.create(name: "syria")
bolivia = Country.create(name: "bolivia")
italy = Country.create(name: "italy")

finn = Traveler.create(name: "Finn")
josh = Traveler.create(name: "Josh")
martha = Traveler.create(name: "Martha")
brian = Traveler.create(name: "Brian")
peter_pan = Traveler.create(name: "Peter Pan")

finn_japan = Recommendation.create(attraction: "Kit Kats in Tokyo", traveler: finn, country: japan)
josh_japan = Recommendation.create(attraction: "Jiro Dreams of Sushi Restaurant in Tokyo", traveler: josh, country: japan)
martha_syria = Recommendation.create(attraction: "Citadel of Aleppo", traveler: martha, country: syria)
brian_bolivia = Recommendation.create(attraction: "Uyuni Salt Flats", traveler: brian, country: bolivia)
josh_italy = Recommendation.create(attraction: "Leaning Tower of Pisa", traveler: josh, country: italy)
