class Calorie < ApplicationRecord
  paginates_per 12
  belongs_to :user
  validates :calories_number, presence: true, numericality: { only_integer: true }
  validates :doing_what, presence: true
  def is_burned_or_consumed?
    if is_burned
      'Burned'
    else
      'Consumed'
    end
  end
  # ransacker :calories_number_as_str do
  # Arel.sql("to_char(\"#{table_name}\".\"calories_number\", '99999999')")
  # end
  ransacker :date_updated_as_str do
    Arel.sql("to_char(\"#{table_name}\".\"updated_at\", 'YYYY-MM-DD HH24:MI:SS')")
  end
end
