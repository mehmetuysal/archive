class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :location
      t.string :user
      t.text :description
      t.timestamps
    end
  end
end
