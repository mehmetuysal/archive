class CreateFileTypes < ActiveRecord::Migration
  def change
    create_table :file_types do |t|
      t.string :file_type_name
      t.text :description
      t.timestamps
    end
  end
end
