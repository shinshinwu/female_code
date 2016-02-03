class AddIsApprovedToThoughts < ActiveRecord::Migration
  def up
    add_column :thoughts, :is_approved, :boolean, default: false, after: :user_id
  end

  def down
    remove_column :thoughts, :is_approved
  end
end
