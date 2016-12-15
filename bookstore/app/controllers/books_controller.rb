class BooksController < ApplicationController
	  def index
	      @books = Book.all 
	  end

	  def show
	  	  @book = Book.find(params[:id])
	  end

	  def new
	  end

	  def create
	  	  @book = Book.new(book_whitelisted)

	  	  @book.save
	  	  redirected_to @book
	  end

	  private
	  def book_whitelisted
	  	  params.require(:book).permit(:category, :title, :review, :sku, :author)
	  	  
	  
	  end	
end
