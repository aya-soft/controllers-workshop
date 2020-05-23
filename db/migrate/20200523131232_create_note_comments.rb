class CreateNoteComments < ActiveRecord::Migration[6.0]
  def change
    create_table :note_comments do |t|
      t.references :note
      t.references :user
      t.text :text

      t.timestamps
    end
  end
end
