class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :item
      t.string :name
      t.belongs_to :unit

      t.timestamps null: false
    end
  end
end
