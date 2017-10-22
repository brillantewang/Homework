class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    book = Book.create(book_params)

    redirect_to books_url
  end

  def destroy
    # fail
    book = Book.find_by(id: params[:id])

    if book.destroy
      redirect_to books_url
    else
      render json: "can't destroy this book"
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
