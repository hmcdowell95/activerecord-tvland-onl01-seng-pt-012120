class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows
  
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.collect do |x|
      "#{x.name} - #{x.show}"
    end
  end
end