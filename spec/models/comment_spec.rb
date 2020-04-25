require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:user_id)
      should validate_presence_of(:post_id)
      should validate_presence_of(:content)
    end
  end
end