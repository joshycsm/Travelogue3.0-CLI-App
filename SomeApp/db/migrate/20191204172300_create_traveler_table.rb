class CreateTravelerTable < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers do |t|
      t.string :name
    end
  end
end
