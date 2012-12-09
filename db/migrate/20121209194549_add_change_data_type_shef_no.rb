class AddChangeDataTypeShefNo < ActiveRecord::Migration
  def up
  	
  end

  def down
  	add_column :documents, :shelf_no
  end
end
