class Api::V1::BooksController < ApplicationController
  def index
    if params[:category_id].present? && params[:category_id] != 'semua'
      @books = Book.joins(:category).where(categories: { name: params[:category_id] })
    else
      @books = Book.all
    end
    render json: @books.as_json(include: { category: { only: [:id, :name, :label] } })
  end

  def show
    @book = Book.find_by(id: params[:id])
    if @book
      render json: @book.as_json(include: { category: { only: [:id, :name, :label] } })
    else
      render json: { error: 'Buku tidak ditemukan' }, status: :not_found
    end
  end
end
