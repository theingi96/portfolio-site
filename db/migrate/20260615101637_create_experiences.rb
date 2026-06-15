class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position_title
      t.string :start_date
      t.string :end_date
      t.text :description
      t.integer :display_order

      t.timestamps
    end
  end
end
