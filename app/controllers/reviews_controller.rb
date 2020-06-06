class ReviewsController < ApplicationController
  before_action :set_trip
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to [@trip, @review]
    else
      render :new
    end

   def update
    @review = Review.find(params[:id])
    redirect_to [@trip, @review]
   else 
    render :edit
   end 
  end

  def destroy
    @review.destroy
    redirect_to trip_review_path
  end

  private

  #deleted this segment didnt look right

end
