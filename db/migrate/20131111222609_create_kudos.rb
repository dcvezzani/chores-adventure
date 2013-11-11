class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.string :title
      t.text :description
      t.references :recipient, index: true
      t.text :picture

      t.timestamps
    end
  end
end
