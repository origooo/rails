class RetailersController < ApplicationController

	#before_filter :authenticated!

	def index
		@retailer = Retailer.all
	end

	def new
		@retailer = Retailer.new
	end

	def edit
		@retailer = Retailer.find(params[:id])
	end

	def create
		@retailer = Retailer.new(retailer_params)
		@retailer.save
		
		redirect_to url_for(:controller => :welcome, :action => :index)
	end

	def update
		@retailer = Retailer.find(params[:id])
		@retailer.update(retailer_params)
		
		redirect_to url_for(:controller => :welcome, :action => :index)
	end

	def destroy
		@retailer = Retailer.find(params[:id])
		@retailer.destroy

		redirect_to url_for(:controller => :welcome, :action => :index)
	end

	before_filter :check_for_cancel, :only => [:create, :update]

	def check_for_cancel
		if params[:commit] == "Cancel"
			redirect_to redirect_to url_for(:controller => :welcome, :action => :index)
		end
	end

	private
		def retailer_params
			params.require(:retailer).permit(:name,:location,:phone,:fb,:web)
		end
end
