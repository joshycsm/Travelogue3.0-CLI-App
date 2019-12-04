class CreateRecommendationTable < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.string :attraction
      t.references :country, foreign_key: true
      t.references :traveler, foreign_key: true
    end
  end
end
