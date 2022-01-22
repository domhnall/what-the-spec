require "rails_helper"

RSpec.describe WidgetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/widgets").to route_to("widgets#index")
    end
  end
end
