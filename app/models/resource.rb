class Resource < ActiveRecord::Base
  belongs_to :resource_type
  has_one :resource_fork, through: :resource_type
  default_scope order(resource_id: :asc)

  def hex_to_string
    hex_data = Base64.decode64(self.data)
    hex_data.scan(/../).map { |x| x.hex.chr }.join #hex to string
  end

  def string_to_hex
    string_data = Base64.decode64(self.data)
    string_data.each_byte.map { |b| b.to_s(16).rjust(2, '0').ljust(3, ' ') }.join #string to hex
  end
end
