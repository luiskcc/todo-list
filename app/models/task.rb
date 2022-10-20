class Task < ApplicationRecord

    validates :title, :description, :presence => true
    validates :title, :description, :uniqueness => true
    validates :title, :description, :length => { :minimum => 2}


    def completed?
        !completed_at.blank?
    end

end 
