class Resource < ActiveRecord::Base
  belongs_to :resource_type
  has_one :resource_fork, through: :resource_type
end
