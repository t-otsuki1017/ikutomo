class Post < ApplicationRecord
	validates:title, presence: true
	validates:body, presence: true, length: {maximum: 200}

	belongs_to :member
end
