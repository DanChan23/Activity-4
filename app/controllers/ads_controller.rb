class AdsController < ApplicationController
    def index
        @all_ads = Ad.all
    end
    
    def show
        @ad = Ad.find(params[:id])
    end

    def new
        @ad = Ad.new
        
    end
    
    def create
        @ad = Ad.new
        @ad.name = params[:ad][:name]
        @ad.price = params[:ad][:price]
        @ad.save
        
        redirect_to "/ads/#{@ad.id}"
    end

    def delete
        @ad = Ad.find(params[:id])
        @ad.destroy
        redirect_to "/ads/"
    end
    
    def edit
        @ad = Ad.find(params[:id])
    end
    
    def update
        @ad = Ad.new
        @ad.name = params[:ad][:name]
        @ad.price = params[:ad][:price]
        @ad.update
    end
    

end
