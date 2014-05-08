class FreelancersController < ApplicationController 
  before_action :set_freelancer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@freelancers = Freelancer.paginate(page: params[:page], :per_page => 3)
	end

	def searchresults
		@searchterm = params[:searchterm]
		@results = Freelancer.where("description LIKE ?", "%#{@searchterm}%")
	end

	def show
	end

	def new
		@freelancer = Freelancer.new
	end

	def create
		@freelancer = Freelancer.new(sanitized_params)
		@freelancer.save!
		redirect_to freelancers_url
	end

	def edit
	end

	def update
		@freelancer.update(sanitized_params)
		redirect_to freelancers_url
	end

	def destroy
		@freelancer.destroy
		redirect_to freelancers_url
	end

  private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_freelancer
	      @freelancer = Freelancer.find(params[:id])
	    end

	    def sanitized_params
	    	params.require(:freelancer).permit(:name, :email,:description, :phoneno, :rate, :joshapproved, :dateofapproval)
	    end
end
