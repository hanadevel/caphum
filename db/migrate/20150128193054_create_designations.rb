class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.belongs_to :person, index: true
      t.belongs_to :title, index: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
    add_foreign_key :designations, :people
    add_foreign_key :designations, :titles
  end
end
