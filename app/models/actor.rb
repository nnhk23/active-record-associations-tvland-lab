require 'pry'

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        Character.find(1).name + " - " + Show.find(1).name
    end
end