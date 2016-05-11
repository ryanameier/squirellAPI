class CreateSquirellSitings < ActiveRecord::Migration
  def change
    create_table :squirell_sitings do |t|
      t.string :squirell_type
      t.string :location
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
