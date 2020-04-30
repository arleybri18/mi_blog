require 'rails_helper'

RSpec.describe "Posts", type: :feature do


  scenario "List all post without authentication" do
    post = create(:post)

    visit posts_path
    expect(current_path).to eq posts_path
    expect(page).to have_selector("body", :count => 1)
  end


end
