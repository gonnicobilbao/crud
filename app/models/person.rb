class Person < ApplicationRecord
    validates :name presence: true
    validates surname presence: true
    validates :dni, numericality : {greater_than: 999999}

    before_create do
        self.name.downcase!
      end

      scope :all_perez, -> { where(name:'juan' , surname:'perez')}
end

