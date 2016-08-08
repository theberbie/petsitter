class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|

      t.string :pet_name
      t.string  :pet_breed
      t.string  :address_line
      t.string  :zipcode
      t.text    :describe
    


      t.timestamps
    end
  end
end
