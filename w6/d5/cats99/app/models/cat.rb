class Cat < ApplicationRecord
  @@CAT_COLORS = %w(brown, black, )

  validates :color, inclusion: {}
  validates :sex, inclusion: {}

end
