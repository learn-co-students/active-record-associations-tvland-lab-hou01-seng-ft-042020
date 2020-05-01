class Show < ActiveRecord::Base
    has_many :characters 
    belongs_to :network 
    has_many :actors, through: :characters 

    def actors_list
       actors.collect do |character| character.full_name end 
    end 
  
end