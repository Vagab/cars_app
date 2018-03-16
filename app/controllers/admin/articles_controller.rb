class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
    @car = Car.find(params[:car_id])
    @article = Article.find(params[:id])
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
      redirect_to admin_car_articles_path(@car, @arcile), notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def destroy
    # Ну и все остальные методы
    # Обрати внимание на окончания путей с (s) или без
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
