class CreateVoluntaries < ActiveRecord::Migration[5.0]
  def change
    create_table :voluntaries do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
