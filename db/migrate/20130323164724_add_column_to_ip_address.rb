class AddColumnToIpAddress < ActiveRecord::Migration
  def change
    add_column :ip_addresses, :ip, :string
  end
end
