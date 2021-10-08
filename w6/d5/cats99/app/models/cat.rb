# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
  @@CAT_COLORS = %w(
    brown, black, white, orange, calico, gray,
    blue, stripes, rainbow 
    )

  validates :color, inclusion: { in: @@CAT_COLORS }
  validates :sex, inclusion: { in: %w( M, F ) }

  def age
    time = Time.now 
    time.year - self.birth_date.year 
  end 
end
