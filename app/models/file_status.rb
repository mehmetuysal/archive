class FileStatus < ActiveRecord::Base
   attr_accessible :file_status_name, :description
   has_many :documents,:foreign_key => "file_status_id"
   def to_s
   	 return self.file_status_name
   end
end
