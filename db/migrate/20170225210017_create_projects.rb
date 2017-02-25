class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :institution
      t.string :url
      t.integer :status
      t.references :voluntary, foreign_key: true

      t.timestamps
    end
  end
end
