class DefaultController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def cart
    if session[:cart].blank?
      session[:cart] = Array.new
      session[:crust] = Array.new
    end
    unless params[:empty].blank?
      session[:cart] = Array.new
      session[:crust] = Array.new
    end
    pizza = params[:pizza_id]
    crust = params[:crust_id]
    unless pizza.blank?
      session[:cart] << Pizza.find(pizza)
      session[:crust] << Crust.find(crust)
    end
  end

  def checkout
    @total = 0
    @delivery = Delivery.new
  end

  def order
    @total = 0
    @order = Order.new
  end

  def create_order
    puts Delivery.find(session[:delivery]['id'])
    order = Order.create(
           customer: Customer.first,
           payment: params[:anyone][:payment],
           delivery: Delivery.find(session[:delivery]['id'])
    )
    if order.save
      session[:cart].each_with_index do |p, i|
        OrderPizza.create(
                      order: order,
                      pizza: Pizza.find(p['id']),
                      crust: Crust.find(session[:crust][i]['id'])
        )
      end

      session.destroy
      redirect_to root_path, notice: 'Order was successfully created.'
    else
      redirect_to root_path, notice: 'There was a problem with your order.'
    end
  end
end