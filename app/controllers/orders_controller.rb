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

  def show
    @order = Order.find(params[:id])
    @product = Product.find(params[:id])
    @sumarno = Order.suma(@order,@product)
  end

  private
  def order_params
    params.require(:order).permit(:product_id, :info, :quantity, :orderdate)
  end

end
