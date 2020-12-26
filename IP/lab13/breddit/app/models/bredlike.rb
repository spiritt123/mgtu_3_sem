class Bredlike < ApplicationRecord
  validates :id_l, presence: true
  validates :name, presence: true
  
  class << self 
    def create_post(id, name)
      if where({:id_l => id, :name => name}).count().zero?
        create(id_l: id, name: name)
      end
    end
  end
end
