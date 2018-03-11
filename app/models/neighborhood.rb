class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :bathrooms,
             :foreign_key => "neiborhood_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
