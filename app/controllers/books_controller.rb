class BooksController < ApplicationController
  def new
　　@book = Book.new
  end

  def create
    flash[:notice] = "successfully"
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end



  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
