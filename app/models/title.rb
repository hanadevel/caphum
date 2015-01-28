class Title < ActiveRecord::Base

  belongs_to :unit

  def unit_name
    unit.present? ? unit.name : ''
  end
end
