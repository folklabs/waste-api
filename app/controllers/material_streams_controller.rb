class MaterialStreamsController < ApplicationController
  before_action :set_material_stream, only: [:show, :edit, :update, :destroy]

  # GET /material_streams
  # GET /material_streams.json
  def index
    @material_streams = MaterialStream.all
  end

  # GET /material_streams/1
  # GET /material_streams/1.json
  def show
  end

  # GET /material_streams/new
  def new
    @material_stream = MaterialStream.new
  end

  # GET /material_streams/1/edit
  def edit
  end

  # POST /material_streams
  # POST /material_streams.json
  def create
    @material_stream = MaterialStream.new(material_stream_params)

    respond_to do |format|
      if @material_stream.save
        format.html { redirect_to @material_stream, notice: 'Material stream was successfully created.' }
        format.json { render :show, status: :created, location: @material_stream }
      else
        format.html { render :new }
        format.json { render json: @material_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_streams/1
  # PATCH/PUT /material_streams/1.json
  def update
    respond_to do |format|
      if @material_stream.update(material_stream_params)
        format.html { redirect_to @material_stream, notice: 'Material stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_stream }
      else
        format.html { render :edit }
        format.json { render json: @material_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_streams/1
  # DELETE /material_streams/1.json
  def destroy
    @material_stream.destroy
    respond_to do |format|
      format.html { redirect_to material_streams_url, notice: 'Material stream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_stream
      @material_stream = MaterialStream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_stream_params
      params.require(:material_stream).permit(:name, :color)
    end
end
