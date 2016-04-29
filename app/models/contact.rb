class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :telephone, presence: true
  validates :obs, presence: true
end
