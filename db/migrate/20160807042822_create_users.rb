class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zipcode

      t.string :phone_number
      t.integer :hours_spent
      t.integer :house_balance

      

      t.timestamps
    end
  end
end
