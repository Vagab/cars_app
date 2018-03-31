class Admin::ImagesController < Admin::BaseController

  def create
    # binding.pry
    image = Image.new(image_params)
    if image.save
      if image.imageable_type == 'Car'
        redirect_to admin_car_path(image.imageable_id)
      else
        car = Article.find(image.imageable_id).car
        redirect_to admin_car_article_path(car.id, image.imageable_id)
      end
    else
      redirect_to admin_cars_path
    end
  end

  def destroy
    image = Image.find(params[:id])
    imageable_type = image.imageable_type
    imageable_id = image.imageable_id
    if imageable_type == "Car"
      image.destroy
      redirect_to admin_car_path(imageable_id)
    else
      car = Article.find(image.imageable_id).car
      image.destroy
      redirect_to admin_car_article_path(car.id, imageable_id)
    end
  end

  private

  def image_params
    params.require(:image).permit(:data, :imageable_id, :imageable_type)
  end

end
