class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :confirmpassword

      t.timestamps
    end
  end
end
