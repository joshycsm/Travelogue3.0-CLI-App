# rake db: create_migration Name=create_hikers_table
# def change
#     create_table :hikers do |t|
#         t.string :name
#         t.integer :age
#     end
# end
# rake db:create_migration NAME=create_trails_table
# def change
#     create_table :trails do |t|
#         t.string :name
#         t.float
#     end
# # end
# # rake db:create_migration NAME=create_hiker_trails_table
# # def change
# #     create_table :hiker_trails do |t|
# #         t.references :hiker, foreigh_key: true
# #         t.references :trail, foreigh_key: true
# #     end
# # end
# # rake db:migrate
# touch db/seeds.rb
# rake db:seed
# seeds.rb
# ruby config/environemnt.rb
# trail1
# trail1.hikers
# hiker1 =hiker.last
# hiker1.trails
# hiker1.hiker_trails

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

# rake db:rollback
# rake db:migrate

# def greet
#     puts "Hi"
# end

# greet

