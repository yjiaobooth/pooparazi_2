class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :nullify

  # Indirect associations

  has_many   :bathrooms,
             :through => :comments,
             :source => :bathroom

  # Validations

end
