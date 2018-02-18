require 'spec_helper'

RSpec.describe GroundworkdocsController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #animations" do
    it "returns http success" do
      get :animations
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #breakpoints" do
    it "returns http success" do
      get :breakpoints
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #responsive_text" do
    it "returns http success" do
      get :responsive_text
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #navigation" do
    it "returns http success" do
      get :navigation
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #media_queries" do
    it "returns http success" do
      get :media_queries
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #forms" do
    it "returns http success" do
      get :forms
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #grid" do
    it "returns http success" do
      get :grid
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #boxes" do
    it "returns http success" do
      get :boxes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #layout_c" do
    it "returns http success" do
      get :layout_c
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tables" do
    it "returns http success" do
      get :tables
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #icons" do
    it "returns http success" do
      get :icons
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #messages" do
    it "returns http success" do
      get :messages
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #helpers" do
    it "returns http success" do
      get :helpers
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #typography" do
    it "returns http success" do
      get :typography
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tabs" do
    it "returns http success" do
      get :tabs
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #layout_b" do
    it "returns http success" do
      get :layout_b
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #buttons" do
    it "returns http success" do
      get :buttons
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #layout_a" do
    it "returns http success" do
      get :layout_a
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #placeholder_text" do
    it "returns http success" do
      get :placeholder_text
      expect(response).to have_http_status(:success)
    end
  end

end
