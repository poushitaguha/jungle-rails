require 'rails_helper'

RSpec.feature "Visitor clicks on the add to cart button and their cart increases by one", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They click on the add to cart button and their cart increases by one" do
    # ACT
    visit root_path

    # CLICK
    first('.btn-primary').click
    # first('article.product footer').click_button('Add')

    # VERIFY
    expect(page).to have_content 'My Cart (1)'

    # DEBUG
    save_screenshot 'add_to_cart_page.png'
    # save_screenshot 'add_to_cart_page1.png'

  end

end
