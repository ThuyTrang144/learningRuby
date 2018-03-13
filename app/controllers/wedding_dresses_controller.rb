class WeddingDressesController < ApplicationController
def index
  @weddingdress = WeddingDress.all
end

def show
  @weddingdress = WeddingDress.find_by id: params[:id]
end

def new
  @weddingdress = WeddingDress.new
end
def create
  a = WeddingDress.new(params.require("wedding_dress").permit(:size, :color, :amount, :cost))
  a.save
  redirect_to wedding_dresses_path
end

def edit

end

end
end
       
  
    