class Registered < ActiveRecord::Base
	enum pay: [:unconfirmed, :confirmed]

	belongs_to :user
	belongs_to :course
end
