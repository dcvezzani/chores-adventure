class Note < ActiveRecord::Base
  belongs_to :author
  belongs_to :item
end
