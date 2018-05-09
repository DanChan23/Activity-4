class AdsController < ApplicationController
	def index
		@ads = Ad.all
	end

	def show
		@ad = Ad.find(params[:id])
	end

	def new
		@ad = Ad.new
	end

	def create
		@ad = Ad.new
		@ad.attributes = ad_params
		@ad.save

		redirect_to "/ads/#{@ad.id}"
	end

	def edit
		@ad = Ad.find(params[:id])
	end

	def update
		@ad = Ad.find(params[:id])
		@ad.update(ad_params)
	end

	def delete
		@ad = Ad.find(params[:id])
		@ad.destroy

		redirect_to "/ads/"
	end

	def ad_params
		params.require(:ad).permit(:name, :price)
	end
end
