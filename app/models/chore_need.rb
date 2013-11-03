class ChoreNeed < ActiveRecord::Base
  belongs_to :chore
  belongs_to :need
end
