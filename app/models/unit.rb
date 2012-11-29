class Unit < ActiveRecord::Base
  attr_accessible :name, :user, :location, :description
  has_many :documents, :foreign_key => "unit_id"

   def to_s
   	 return self.name
   end
end
