class NoteVote < ApplicationRecord
  belongs_to :note
  belongs_to :user

  validates :value, inclusion: { in: [-1, 1] }
end
