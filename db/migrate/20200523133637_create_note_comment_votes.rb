class CreateNoteCommentVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :note_comment_votes do |t|
      t.references :note_comment
      t.references :user
      t.integer :value

      t.timestamps
    end
  end
end
