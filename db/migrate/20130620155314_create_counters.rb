class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :address_id
      t.integer :comment_id
      t.string  :direction

      t.timestamps
    end
  end
end
