class RecommendationsController < ApplicationController

  before_action :logged_in_user, only: [:user_recommendation]
  before_action :logged_in_admin, only: [:edit, :destroy, :index]

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    respond_to do |format|
      if current_user.recommendations.create(recommendation_params)
        format.html { redirect_to current_user, notice: "Recommended Successfully!" }

      else
        format.html { render 'new', error: "Unable to recommend" }

      end
    end
  end

  def show
    @recommendation = Recommendation.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_url
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
    @recommendation = Recommendation.find(params[:id])
    @recommendation.status = "Accepted"
    respond_to do |format|
      if @recommendation.update_attributes(recommendation_params)
        book = Book.new(isbn: @recommendation.isbn, title: @recommendation.title,
                        author: @recommendation.author, description: @recommendation.description)
        if book.save
          format.html { redirect_to recommendations_path, notice: "Recommended Successfully!" }
        else
          format.html { render edit, error: book.errors.full_messages.to_sentence }
        end
      else
        render edit
      end
    end

  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.status = "Declined"
    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to recommendations_path, notice: "Decline Successful!" }
      else
        format.html { redirect_to recommendations_path, error: "Decline Failed!" }
      end
    end

  end

  def user_recommendation
    @recommendations = current_user.recommendations
  end

  private
  def recommendation_params
    params.require(:recommendation).permit(:isbn, :title, :description, :author, :status)
  end
end
