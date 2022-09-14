class BooksController < ApplicationController
  def new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/books/#{book.id}"
    flash[:notice] = "successfully" 

  end
  

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to "/books/#{book.id}"
  　flash[:notice] = "successfully" 

  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/index'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
