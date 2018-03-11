class Bathroom < ApplicationRecord
  # Direct associations

  belongs_to :neiborhood,
             :required => false,
             :class_name => "Neighborhood",
             :counter_cache => true

  has_many   :comments,
             :dependent => :nullify

  # Indirect associations

  has_many   :users,
             :through => :comments,
             :source => :user

  # Validations

end
