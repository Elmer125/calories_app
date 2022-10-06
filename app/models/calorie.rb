class Calorie < ApplicationRecord
  paginates_per 12
  belongs_to :user
  def is_burned_or_consumed?
    if is_burned
      'Burned'
    else
      'Consumed'
    end
  end
end
