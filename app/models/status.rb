class Status < ActiveRecord::Base
	validates :user_id, presence: true
	validates :content, presence: true,
											length: { minimum: 2 }
	belongs_to :user
end
