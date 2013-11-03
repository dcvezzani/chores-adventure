class CreateAssignmentRewards < ActiveRecord::Migration
  def change
    create_table :assignment_rewards do |t|
      t.references :assignment, index: true
      t.references :reward, index: true

      t.timestamps
    end
  end
end
