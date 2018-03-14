class ArticlesController < ApplicationController

  def show
    @article = Articles.find(params[:id])
  end

end
