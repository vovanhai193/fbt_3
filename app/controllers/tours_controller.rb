class ToursController < ApplicationController
  def index
    @categories = CategoryTour.all
    @q = Tour.search params[:q]
    @tours = @q.result.includes(:images_tours)
      .paginate page: params[:page], per_page: Settings.tour_pages
  end

  def show
    @tour = Tour.find_by id: params[:id]
    if @tour.nil?
      flash[:danger] = t "tour.not_found"
      redirect_to root_path
    else
      @images_tours = @tour.images_tours
    end
  end
end
