class AdddescrTwoToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :description_second, :string
  end
end
