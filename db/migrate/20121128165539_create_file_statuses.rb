class CreateFileStatuses < ActiveRecord::Migration
  def change
    create_table :file_statuses do |t|
      t.string :file_status_name
      t.text :description
      t.timestamps
      t.timestamps
    end
  end
end
