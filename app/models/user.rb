class User < ApplicationRecord
  has_many :notes
  has_many :note_comments
end
