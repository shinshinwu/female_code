class CreateHeadquarters < ActiveRecord::Migration
  def change
    create_table :headquarters do |t|
      t.string :city,              null: false
      t.string :state,             null: false
      t.string :country,           null: false, default: 'US'
    end

  end
end
