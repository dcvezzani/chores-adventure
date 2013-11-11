class AddPictureToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :picture, :text
  end
end
