class AddShelfStringToDocuments < ActiveRecord::Migration
  def change
  	remove_column :documents, :shelf_no
  	add_column :documents, :shelf_no, :string
  end
end
