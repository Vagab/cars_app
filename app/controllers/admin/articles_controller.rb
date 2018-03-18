class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
    @car = Car.find(params[:car_id])
  end

  def new
    @car = Car.find(params[:car_id])
    @article = Article.new
  end

  def index
    @car = Car.includes(:articles).find(params[:car_id])
  end

  def create
    @car = Car.find(params[:car_id])
    @article = @car.articles.new(article_params)
    if @article.save
      redirect_to admin_car_articles_path(@car, @article), notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @car = Car.find(params[:car_id])
    @article.destroy
    redirect_to admin_car_articles_path(@car)
  end

  def edit
    @car = Car.find(params[:car_id])
    @article = Article.find(params[:id])
  end

  def update
    @car = Car.find(params[:car_id])
    if @article.update(article_params)
      redirect_to admin_car_articles_path(@car, @article), notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
