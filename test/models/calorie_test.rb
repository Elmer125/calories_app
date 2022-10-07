# == Schema Information
#
# Table name: calories
#
#  id              :bigint           not null, primary key
#  calories_number :integer
#  is_burned       :boolean
#  doing_what      :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
require "test_helper"

class CalorieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
