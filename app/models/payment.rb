class Payment < ActiveRecord::Base
  attr_accessible :amount

  belongs_to :user

  validates :amount, presence: true
end
