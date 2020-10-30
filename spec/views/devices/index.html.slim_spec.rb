require 'rails_helper'

RSpec.describe "devices/index", type: :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        name: "Name",
        category: nil
      ),
      Device.create!(
        name: "Name",
        category: nil
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
