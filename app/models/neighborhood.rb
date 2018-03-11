require 'open-uri'
class Neighborhood < ApplicationRecord
  before_validation :geocode_center_address

  def geocode_center_address
    if self.center_address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.center_address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.center_address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.center_address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.center_address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  has_many   :bathrooms,
             :foreign_key => "neiborhood_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
