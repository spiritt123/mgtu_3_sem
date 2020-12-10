class Bredpost < ApplicationRecord
  validates :id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :content, presence: true
  validates :name, presence: true

  class << self 
    def create_post(title, content, name)
      create(id: Time.new, title: title, content: content, name: name)
    end
  end
end
