class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :set_car
  
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
