class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.references :user,      null: false
      t.text       :thoughts,  null: false

      t.timestamps
    end
  end
end
