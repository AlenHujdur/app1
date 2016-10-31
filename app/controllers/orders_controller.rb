class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @sum = Order.total

    @toexcel = Order.order(:info)
    respond_to do |format|
      format.html
      format.csv { send_data @toexcel.to_csv }
      format.xls { send_data @toexcel.to_csv(col_sep: "\t") }
    end
  end

  def new
    @order=Order.new
    @product=Product.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to order_path(@order)
  end

  def show
    @order = Order.find(params[:id])
    @sumarno = Order.suma(@order,@product)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to orders_url(@orders)
  end

  private
  def order_params
    params.require(:order).permit(:product_id, :info, :quantity, :orderdate)
  end

end