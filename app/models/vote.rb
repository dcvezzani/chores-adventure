class Vote < ActiveRecord::Base
  belongs_to :author, class_name: "FamilyMember"
  belongs_to :item
end
