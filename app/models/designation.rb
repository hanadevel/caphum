class Designation < ActiveRecord::Base
  belongs_to :persona
  belongs_to :title
end
