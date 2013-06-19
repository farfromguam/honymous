class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_address do |t|
      t.string  :ip_address
      t.string  :user_id

      t.timestamps
    end
  end
end



