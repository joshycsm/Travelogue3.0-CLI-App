class CreateTrailsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
        t.string :name
        t.float :length
      end
  end
end
