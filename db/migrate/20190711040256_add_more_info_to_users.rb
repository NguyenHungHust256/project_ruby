class AddMoreInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :phone, :integer
    add_column :users, :job, :string
    add_column :users, :admin, :boolean, default: false
  end
end
