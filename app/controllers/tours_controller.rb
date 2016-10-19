class ToursController < ApplicationController
  def index
    @categories = CategoryTour.all
    params[:text] ||= ""
    if params[:category_tour_id].blank?
      @tours = Tour.load_tour params[:text]
    else category = @categories.find_by(id: params[:category_tour_id])
      @tours = category.tours.load_tour params[:text]
    end
    @tours = @tours.includes(:images_tours).paginate page: params[:page],
      per_page: Settings.tour_pages
  end

  def show
    @tour = Tour.find_by id: params[:id]
    if @tour.nil?
      redirect_to root_path
    else
      @images_tours = @tour.images_tours
    end
  end
end
