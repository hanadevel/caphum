class Designation < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :title

  def person_full_name
    person.present? ? person.full_name : ''
  end

  def title_name
    title.present? ? title.name : ''
  end

end
