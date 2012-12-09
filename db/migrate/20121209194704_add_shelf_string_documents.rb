class AddShelfStringDocuments < ActiveRecord::Migration
  def up
  	
  end

  def down
  	remove_column :documents, :shelf_no
  end
end
