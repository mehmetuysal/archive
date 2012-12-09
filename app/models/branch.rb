class Branch < ActiveRecord::Base
  attr_accessible :name, :user, :description, :location, :unit_id
  has_many :documents, :foreign_key => "branch_id"
  belongs_to :unit

    def to_s
   	 return self.name
   end
end
