class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name,              null: false
      t.string :url
      t.string :city
      t.string :state
      t.string :country,           null: false, default: 'US'
      t.integer :num_female_eng,   null: false
      t.integer :num_eng,          null: false

      t.timestamps
    end

    add_index :companies, :name
  end
end
