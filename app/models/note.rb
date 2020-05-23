class Note < ApplicationRecord
  belongs_to :user
  has_many :note_comments
  has_many :note_votes
end
