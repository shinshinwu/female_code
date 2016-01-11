class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :provider
      t.string :uid
      t.string :name
      t.string :display_name
      t.reference :programming_language
      t.reference :company

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, ["uid"], name: "index_users_on_uid", unique: true, using: :btree
  end
end