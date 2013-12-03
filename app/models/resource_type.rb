class ResourceType < ActiveRecord::Base
  belongs_to :resource_fork
  has_many :resources, dependent: :destroy
  accepts_nested_attributes_for :resources
end
