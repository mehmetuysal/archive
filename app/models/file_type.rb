class FileType < ActiveRecord::Base
   attr_accessible :file_type_name, :description
   has_many :documents,:foreign_key => "file_type_id"

   def to_s
   	 return self.file_type_name
   end
end
