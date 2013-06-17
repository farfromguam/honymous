class AddOneLiner < ActiveRecord::Migration
  def change
    add_column :profiles, :one_liner, :string
  end
end
