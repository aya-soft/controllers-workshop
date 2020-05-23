class CreateNoteVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :note_votes do |t|
      t.references :user
      t.references :note
      t.integer :value

      t.timestamps
    end
  end
end
