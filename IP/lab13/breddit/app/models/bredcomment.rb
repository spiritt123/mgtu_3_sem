class Bredcomment < ApplicationRecord
  validates :id_p, presence: true
  validates :id_c, presence: true
  validates :content, presence: true
  validates :name, presence: true
  
  class << self
    def create_comment(id_p, content, name)
      create(id_p: id_p, id_c: Time.now, content: content, name: name)
    end
  end
end
