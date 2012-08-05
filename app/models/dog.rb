class Dog < ActiveRecord::Base
  attr_accessible :name


  def as_json(options={})
    {
      :id => id,
      :name => name
    }
  end

end
