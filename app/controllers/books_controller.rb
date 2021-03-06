class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def show
  end

  def new 
    @book = Book.new
  end

  def edit
  end
  
  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to @book, 
          notice: "Book was created successfully" 
      else 
        render :index 
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book,
        notice: "Book was successfully update"
    else
      render :index
    end
  end

  def destroy
    if @book.destroy
      redirect_to books_path,
        notice: "Book was successfully delete"
    else
      render :index
    end
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :content, :author)
  end
end
