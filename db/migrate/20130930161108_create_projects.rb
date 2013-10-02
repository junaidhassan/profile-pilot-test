class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.decimal :estimate
      t.string :project
      t.datetime :start_time
      t.datetime :due_time
      t.string :client
      t.string :desc

      t.timestamps
    end
  end
end
