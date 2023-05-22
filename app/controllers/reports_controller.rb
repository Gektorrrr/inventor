class ReportsController < ApplicationController
  def index
  end

  def generate
    start_date = Date.parse(params[:start_date])
    end_date = Date.parse(params[:end_date])

    @shipments = Shipment.where(shipment_date: start_date..end_date)
    @orders = Order.where(order_date: start_date..end_date)
  end
end
