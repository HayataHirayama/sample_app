require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "#home" do
    # 正常にレスポンスを返すこと
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
    it "should have the right title" do
      get :home
      assert_select "title", "Home | #{base_title}"
    end
  end

  describe "#help" do
    it "returns http success" do
      # 正常にレスポンスを返すこと
      get :help
      expect(response).to be_success
    end
    it "should have the right title" do
      get :help
      assert_select "title", "Help | #{base_title}"
    end
  end

  describe "#about" do
    it "returns http success" do
      get :about
      expect(response).to be_success
    end
    it "should have the right title" do
      get :about
      assert_select "title", "About | #{base_title}"
    end
  end
end
