class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.integer :unit_current_price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
