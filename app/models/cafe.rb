class Cafe < ApplicationRecord
  
  has_many :infos, dependent: :destroy
  
end
