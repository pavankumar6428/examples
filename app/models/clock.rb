class Clock < ActiveRecord::Base
  attr_accessible :minutes_ahead, :name
end
