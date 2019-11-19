class CategoriesController < ApplicationController
  def index
    categories = Category.all
    serializer(categories)
  end

  private
  def serializer(data)
    render json: { data: data }, include: [
      articles: {
        only: [:id, :title]
      }
    ]
  end
end
