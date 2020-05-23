class NoteCommentVote < ApplicationRecord
  belongs_to :note_comment
  belongs_to :user

  validates :value, inclusion: { in: [-1, 1] }
end
