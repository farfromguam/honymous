class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string   :name
      t.string   :one_liner
      t.text     :description
      t.boolean  :public_profile

      t.timestamps
    end
  end
end
