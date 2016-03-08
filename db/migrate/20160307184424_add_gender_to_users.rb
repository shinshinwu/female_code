class AddGenderToUsers < ActiveRecord::Migration
  def up
    add_column :users, :gender, :string, after: :id
  end

  def down
    remove_column :users, :gender
  end
end
