require "rails_helper"

# rubocop:disable Metrics/BlockLength
RSpec.describe StaticPagesController, type: :controller do
  # rubocop:enable Metrics/BlockLength
  render_views

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "#home" do
    # 正常にレスポンスを返すこと
    it "returns http success" do
      get :home
      expect(response).to be_successful
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
      expect(response).to be_successful
    end
    it "should have the right title" do
      get :help
      assert_select "title", "Help | #{base_title}"
    end
  end

  describe "#about" do
    it "returns http success" do
      get :about
      expect(response).to be_successful
    end
    it "should have the right title" do
      get :about
      assert_select "title", "About | #{base_title}"
    end
  end
end
