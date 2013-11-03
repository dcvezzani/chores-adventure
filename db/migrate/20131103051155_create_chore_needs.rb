class CreateChoreNeeds < ActiveRecord::Migration
  def change
    create_table :chore_needs do |t|
      t.references :chore, index: true
      t.references :need, index: true

      t.timestamps
    end
  end
end
