class AddChangesToTables < ActiveRecord::Migration
  def change
  	add_column :branches, :unit_id, :integer
  	add_column :documents, :shelf_no, :integer
  	add_column :documents, :end_date, :date
  end
end
