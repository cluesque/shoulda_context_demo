class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
    end
    create_table :addresses do |t|
      t.integer :user_id
      t.string :street
      t.string :city
      t.string :state
    end
  end
end
