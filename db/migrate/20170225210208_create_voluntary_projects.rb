class CreateVoluntaryProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :voluntary_projects do |t|
      t.references :voluntary, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
