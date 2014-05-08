class PastWorksController < ApplicationController
  before_action :set_past_work, only: [:show, :edit, :update, :destroy]

  # GET /past_works
  # GET /past_works.json
  def index
    @past_works = PastWork.all
  end

  # GET /past_works/1
  # GET /past_works/1.json
  def show
  end

  # GET /past_works/new
  def new
    @freelancer = Freelancer.find(params[:freelancer_id])
    @past_work = PastWork.new
  end

  # GET /past_works/1/edit
  def edit
  end

  # POST /past_works
  # POST /past_works.json
  def create
    @past_work = PastWork.new(past_work_params)
    @past_work.freelancer_id = params[:freelancer_id]

    respond_to do |format|
      if @past_work.save
        format.html { redirect_to @past_work.freelancer, notice: 'Past work was successfully created.' }
        format.json { render :show, status: :created, location: @past_work }
      else
        format.html { render :new }
        format.json { render json: @past_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_works/1
  # PATCH/PUT /past_works/1.json
  def update
    respond_to do |format|
      if @past_work.update(past_work_params)
        format.html { redirect_to @past_work, notice: 'Past work was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_work }
      else
        format.html { render :edit }
        format.json { render json: @past_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_works/1
  # DELETE /past_works/1.json
  def destroy
    @past_work.destroy
    respond_to do |format|
      format.html { redirect_to past_works_url, notice: 'Past work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_work
      @past_work = PastWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_work_params
      params.require(:past_work).permit(:name, :description)
    end
end
