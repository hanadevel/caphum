class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :item
      t.string :name
      t.belongs_to :unit, index: true

      t.timestamps null: false
    end
    add_foreign_key :titles, :units
  end
end
