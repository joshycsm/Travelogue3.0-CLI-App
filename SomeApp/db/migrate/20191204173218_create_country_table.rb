class CreateCountryTable < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
    end
  end
end