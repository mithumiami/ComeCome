class Menu < ApplicationRecord

  has_many :infos, dependent: :destroy


end
