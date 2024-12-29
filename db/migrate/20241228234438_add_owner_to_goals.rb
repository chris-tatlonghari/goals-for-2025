class AddOwnerToGoals < ActiveRecord::Migration[7.1]
  def change
    add_column :goals, :owner, :string
  end
end
