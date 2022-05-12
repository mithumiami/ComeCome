class Menu < ApplicationRecord

  has_many :infos, dependent: :destroy
  belongs_to :cafe

end
