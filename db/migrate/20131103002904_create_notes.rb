class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.references :author, index: true
      t.references :item, index: true
      t.string :type

      t.timestamps
    end
  end
end
