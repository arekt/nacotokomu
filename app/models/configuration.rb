class Configuration < ActiveRecord::Base
    has_many :hosts 
    has_many :services
end
