class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.string :user
      t.text :description
      t.timestamps
    end
  end
end
