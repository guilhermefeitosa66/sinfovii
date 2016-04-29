class Panelist < ActiveRecord::Base
  enum status: [:confirmed, :unconfirmed]

  belongs_to :user

  validates :article, presence: true
end
