class AddTypeToFamilyMembers < ActiveRecord::Migration
  def change
    add_column :family_members, :type, :string
  end
end
