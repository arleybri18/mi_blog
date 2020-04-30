# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  image_url  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Post, type: :model do

  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:user_id)
      should validate_presence_of(:title)
      should validate_presence_of(:body)
      should validate_length_of(:body).is_at_least(250)
    end

    it "validate relations" do
      should have_many(:comments)
    end
  end
end
