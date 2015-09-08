class RoundPlansController < ApplicationController
  before_action :set_round_plan, only: [:show, :edit, :update, :destroy]

  # GET /round_plans
  # GET /round_plans.json
  def index
    @round_plans = RoundPlan.all
  end

  # GET /round_plans/1
  # GET /round_plans/1.json
  def show
  end

  # GET /round_plans/new
  def new
    @round_plan = RoundPlan.new
  end

  # GET /round_plans/1/edit
  def edit
  end

  # POST /round_plans
  # POST /round_plans.json
  def create
    @round_plan = RoundPlan.new(round_plan_params)

    respond_to do |format|
      if @round_plan.save
        format.html { redirect_to @round_plan, notice: 'Round plan was successfully created.' }
        format.json { render :show, status: :created, location: @round_plan }
      else
        format.html { render :new }
        format.json { render json: @round_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /round_plans/1
  # PATCH/PUT /round_plans/1.json
  def update
    respond_to do |format|
      if @round_plan.update(round_plan_params)
        format.html { redirect_to @round_plan, notice: 'Round plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @round_plan }
      else
        format.html { render :edit }
        format.json { render json: @round_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_plans/1
  # DELETE /round_plans/1.json
  def destroy
    @round_plan.destroy
    respond_to do |format|
      format.html { redirect_to round_plans_url, notice: 'Round plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round_plan
      @round_plan = RoundPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_plan_params
      params.require(:round_plan).permit(:name, :schedule, :start_date, :end_date, service_ids: [])
    end
end
