class DefaultController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def cart
    puts '---------'
    puts session[:cart]
    if session[:cart].empty?
      session[:cart] = Array.new
    end
    unless params[:empty].blank?
      session[:cart] = Array.new
    end
    pizza = params[:pizza_id]
    unless pizza.blank?
      session[:cart] << Pizza.find(pizza)
    end
  end
end
