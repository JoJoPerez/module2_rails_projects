class AddMissingColumnsToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :name, :string
    add_column :people, :age, :integer
    add_column :people, :title, :string
    add_column :people, :email, :string
  end
end
