class NoteComment < ApplicationRecord
  belongs_to :note
  belongs_to :user

  has_many :note_votes
end
