class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :weight
      t.references :author, index: true
      t.references :item, index: true
      t.string :type

      t.timestamps
    end
  end
end
