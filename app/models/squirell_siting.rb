class SquirellSiting < ActiveRecord::Base
  validates :squirell_type, :description, presence: true
end
