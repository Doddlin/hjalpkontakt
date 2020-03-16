class Fbgroup < ApplicationRecord

    geocoded_by :name,
        :latitude => :lat, :longitude => :long
    after_validation :geocode

end
