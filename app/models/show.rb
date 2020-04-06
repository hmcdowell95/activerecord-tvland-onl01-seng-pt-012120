class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  
  def actors_list
    self.actors.collect do |x|
      x.full_name
    end
  end
end