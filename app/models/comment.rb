class Comment < ApplicationRecord
  # Direct associations

  belongs_to :bathroom,
             :counter_cache => true

  # Indirect associations

  # Validations

end
