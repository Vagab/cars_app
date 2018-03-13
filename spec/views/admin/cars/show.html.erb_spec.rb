require 'rails_helper'

RSpec.describe "admin/cars/show", type: :view do
  before(:each) do
    @admin_car = assign(:admin_car, Car.create!(
      :manufactuture => "Manufactuture",
      :model => "Model",
      :year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Manufactuture/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/2/)
  end
end
