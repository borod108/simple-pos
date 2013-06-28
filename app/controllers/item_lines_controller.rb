class ItemLinesController < ApplicationController
  # GET /item_lines
  # GET /item_lines.json
  before_filter :authenticate_user!
  def index
    @item_lines = ItemLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_lines }
    end
  end

  # GET /item_lines/1
  # GET /item_lines/1.json
  def show
    @item_line = ItemLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_line }
    end
  end

  # GET /item_lines/new
  # GET /item_lines/new.json
  def new
    @item_line = ItemLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_line }
    end
  end

  # GET /item_lines/1/edit
  def edit
    @item_line = ItemLine.find(params[:id])
  end

  # POST /item_lines
  # POST /item_lines.json
  def create
    @item_line = ItemLine.new(params[:item_line])

    respond_to do |format|
      if @item_line.save
        format.html { redirect_to @item_line, notice: 'Item line was successfully created.' }
        format.json { render json: @item_line, status: :created, location: @item_line }
      else
        format.html { render action: "new" }
        format.json { render json: @item_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_lines/1
  # PUT /item_lines/1.json
  def update
    @item_line = ItemLine.find(params[:id])

    respond_to do |format|
      if @item_line.update_attributes(params[:item_line])
        format.html { redirect_to @item_line, notice: 'Item line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_lines/1
  # DELETE /item_lines/1.json
  def destroy
    @item_line = ItemLine.find(params[:id])
    @item_line.destroy

    respond_to do |format|
      format.html { redirect_to item_lines_url }
      format.json { head :no_content }
    end
  end
end
