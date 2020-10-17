class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def down
    add_column :users, :profile, :text
  end
end
