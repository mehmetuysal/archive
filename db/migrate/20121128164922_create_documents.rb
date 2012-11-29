class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :unit_id
      t.integer :branch_id
      t.date :date
      t.integer :file_type_id
      t.string :archive_no
      t.integer :file_status_id
      t.string :file_no
      t.string :description
      t.date :destruction_date
      t.string :decisiton
      t.string :process
      t.timestamps
    end
  end
end
