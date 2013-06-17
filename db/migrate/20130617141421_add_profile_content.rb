class AddProfileContent < ActiveRecord::Migration
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :description, :text
    add_column :profiles, :criticism, :boolean
    add_column :profiles, :comments, :boolean
    add_column :profiles, :about_myself, :boolean
    add_column :profiles, :anything, :boolean
    add_column :profiles, :public_profile, :boolean
  end
end
