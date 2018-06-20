class DefaultController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
end
