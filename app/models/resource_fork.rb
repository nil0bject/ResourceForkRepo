class ResourceFork < ActiveRecord::Base
	has_many :resource_types, dependent: :destroy
	has_many :resources, through: :resource_types
  accepts_nested_attributes_for :resource_types
end
