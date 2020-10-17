require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        list = []
        list << Actor.find(1).full_name
    end

end