class Document < ActiveRecord::Base
  attr_accessible :unit_id , :branch_id, :date, :file_type_id, :archive_no, :file_status_id, :file_no, :description, :destruction_date, :decisiton, :process
  belongs_to :unit
  belongs_to :branch
  belongs_to :file_status
  belongs_to :file_type




  scope :active, where(:file_status_id => 1)
  scope :passive, where(:file_status_id => 2)
  
  scope :by_status, lambda {|file_status_ids| 
	  where(:file_status_id =>file_status_ids ) unless file_status_id.empty?
	}  
end
