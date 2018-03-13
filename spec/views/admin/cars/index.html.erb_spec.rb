require 'rails_helper'

RSpec.describe "admin/cars/index", type: :view do
  before(:each) do
    assign(:admin_cars, [
      Car.create!(
        :manufactuture => "Manufactuture",
        :model => "Model",
        :year => 2
      ),
      Car.create!(
        :manufactuture => "Manufactuture",
        :model => "Model",
        :year => 2
      )
    ])
  end

  it "renders a list of admin/cars" do
    render
    assert_select "tr>td", :text => "Manufactuture".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
