class Resource < ActiveRecord::Base
  belongs_to :resource_type
  has_one :resource_fork, through: :resource_type
  has_one :transform
  accepts_nested_attributes_for :transform
  default_scope order(resource_id: :asc)

  def data_string
    Base64.decode64(self.data)
  end

  def hex_to_string
    data_string.scan(/../).map { |x| x.hex.chr }.join #hex to string
  end

  def string_to_hex
    data_string.each_byte.map { |b| b.to_s(16).rjust(2, '0').ljust(3, ' ') }.join #string to hex
  end
end
