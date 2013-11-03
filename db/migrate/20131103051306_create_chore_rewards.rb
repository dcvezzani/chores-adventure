class CreateChoreRewards < ActiveRecord::Migration
  def change
    create_table :chore_rewards do |t|
      t.references :chore, index: true
      t.references :reward, index: true

      t.timestamps
    end
  end
end
