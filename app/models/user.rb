class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
