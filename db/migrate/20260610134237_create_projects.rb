class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :github_url
      t.string :app_url
      t.integer :position

      t.timestamps
    end
  end
end
