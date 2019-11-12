require "rails_helper"

RSpec.describe MovimentoDeEstoquesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/movimento_de_estoques").to route_to("movimento_de_estoques#index")
    end

    it "routes to #new" do
      expect(:get => "/movimento_de_estoques/new").to route_to("movimento_de_estoques#new")
    end

    it "routes to #show" do
      expect(:get => "/movimento_de_estoques/1").to route_to("movimento_de_estoques#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movimento_de_estoques/1/edit").to route_to("movimento_de_estoques#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/movimento_de_estoques").to route_to("movimento_de_estoques#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movimento_de_estoques/1").to route_to("movimento_de_estoques#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movimento_de_estoques/1").to route_to("movimento_de_estoques#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movimento_de_estoques/1").to route_to("movimento_de_estoques#destroy", :id => "1")
    end
  end
end
