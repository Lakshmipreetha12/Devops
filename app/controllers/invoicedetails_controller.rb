class InvoicedetailsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_invoicedetail, only: %i[ show edit update destroy ]

  # GET /invoicedetails or /invoicedetails.json
  def index
    @invoicedetails = Invoicedetail.all
    render json: @invoicedetails
  end

  # GET /invoicedetails/1 or /invoicedetails/1.json
  def show
    @invoicerecord= Invoicedetail.find(params[:id])
    render json: @invoicerecord
  end

  # GET /invoicedetails/new

  # GET /invoicedetails/1/edit
  def edit
  end

  # POST /invoicedetails or /invoicedetails.json
  def create
    @invoicenew=Invoicedetail.new(params.require(:Invoicedetails).permit(:invoice_number, :invoice_date, :shipping_address,:billing_address, :total_amount))
    @invoicenew.save
    render json: @invoicenew
  end

  # PATCH/PUT /invoicedetails/1 or /invoicedetails/1.json
  def update
    @invoicerecord= Invoicedetail.find(params[:id])
    @invoicerecord= Invoicedetail.update(params.require(:Invoicedetails).permit(:invoice_number, :invoice_date, :shipping_address,:billing_address, :total_amount))
    render json: @invoicerecord
  end

  # DELETE /invoicedetails/1 or /invoicedetails/1.json
  def destroy
    @invoicedetail= Invoicedetail.find(params[:id])
    @invoicedetail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoicedetail
      @invoicedetail = Invoicedetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoicedetail_params
      params.require(:invoicedetail).permit(:invoice_number, :invoice_date, :shipping_address, :billing_address, :total_amount)
    end
end
