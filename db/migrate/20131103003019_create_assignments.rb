class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :chore, index: true
      t.references :family_member, index: true

      t.timestamps
    end
  end
end
