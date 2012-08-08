class Dog < ActiveRecord::Base
  attr_accessible :name, :age


  def as_json(options={})
    {
      :id => id,
      :name => name
    }
  end

end
