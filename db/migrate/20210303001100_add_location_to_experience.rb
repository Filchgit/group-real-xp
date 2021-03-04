class AddLocationToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :location, :string
  end
end
