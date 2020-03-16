class HomeController < ApplicationController
    def index
        fbgroups = Fbgroup.all
        @fbmarkers = fbgroups.map do |group|
            {
                latlng: [group[:lat], group[:long]],
                popup: "
                <div>
                <header>
                <h6>#{group[:name]}</h6>
                </header>
                <a href='http://#{group[:url]}' target='_blank'>Gå till Facebook</a>
                </div>"
            }
        end
    end
end
