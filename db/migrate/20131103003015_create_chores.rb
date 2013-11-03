class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.datetime :assigned_at
      t.datetime :completed_at
      t.datetime :due_at

      t.timestamps
    end
  end
end
