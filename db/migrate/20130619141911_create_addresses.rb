class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string  :ip_address
      t.string  :user_id

      t.timestamps
    end
  end
end



