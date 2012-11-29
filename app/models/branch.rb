class Branch < ActiveRecord::Base
  attr_accessible :name, :user, :description, :location
  has_many :documents, :foreign_key => "branch_id"
end
