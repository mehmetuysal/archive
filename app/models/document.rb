class Document < ActiveRecord::Base
  attr_accessible :unit_id , :branch_id, :date, :document_name, :file_type_id, :archive_no, :file_status_id, :file_no, :description, :destruction_date, :decisiton, :process, :shelf_no, :end_date
  belongs_to :unit
  belongs_to :branch
  belongs_to :file_status
  belongs_to :file_type


  validates :unit_id, :branch_id, :file_status_id, :document_name , :file_type_id, :presence => true
  
  scope :by_status, lambda {|file_status_ids| 
	  where(:file_status_id =>file_status_ids ) unless file_status_id.empty?
	}  
end
