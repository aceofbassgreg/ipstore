class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|

      t.timestamps
    end
  end
end
