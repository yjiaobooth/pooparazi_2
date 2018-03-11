class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :bathroom,
             :counter_cache => true

  # Indirect associations

  # Validations

end
