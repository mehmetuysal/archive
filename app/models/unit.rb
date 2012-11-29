class Unit < ActiveRecord::Base
  attr_accessible :name, :user, :location, :description
  has_many :documents, :foreign_key => "unit_id"
end
