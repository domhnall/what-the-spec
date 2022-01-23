# spec/test_1_spec.rb

require 'rails_helper'

describe ApplicationController, type: :controller do

  class MockApplicationController < ApplicationController
    def some_action
      "Blah"
    end
  end

  describe '#some_action' do
    before :each do
      @controller = MockApplicationController.new
    end

    it "should return expected String value" do
      expect(@controller.some_action).to eq "Blah"
    end
  end
end
