class ItemLinePricesController < ApplicationController
  # GET /item_line_prices
  # GET /item_line_prices.json
  def index
    @item_line_prices = ItemLinePrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_line_prices }
    end
  end

  # GET /item_line_prices/1
  # GET /item_line_prices/1.json
  def show
    @item_line_price = ItemLinePrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_line_price }
    end
  end

  # GET /item_line_prices/new
  # GET /item_line_prices/new.json
  def new
    @item_line_price = ItemLinePrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_line_price }
    end
  end

  # GET /item_line_prices/1/edit
  def edit
    @item_line_price = ItemLinePrice.find(params[:id])
  end

  # POST /item_line_prices
  # POST /item_line_prices.json
  def create
    @item_line_price = ItemLinePrice.new(params[:item_line_price])

    respond_to do |format|
      if @item_line_price.save
        format.html { redirect_to @item_line_price, notice: 'Item line price was successfully created.' }
        format.json { render json: @item_line_price, status: :created, location: @item_line_price }
      else
        format.html { render action: "new" }
        format.json { render json: @item_line_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_line_prices/1
  # PUT /item_line_prices/1.json
  def update
    @item_line_price = ItemLinePrice.find(params[:id])

    respond_to do |format|
      if @item_line_price.update_attributes(params[:item_line_price])
        format.html { redirect_to @item_line_price, notice: 'Item line price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_line_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_line_prices/1
  # DELETE /item_line_prices/1.json
  def destroy
    @item_line_price = ItemLinePrice.find(params[:id])
    @item_line_price.destroy

    respond_to do |format|
      format.html { redirect_to item_line_prices_url }
      format.json { head :no_content }
    end
  end
end
