class BooksController < ApplicationController
  def top
  end


  def index
  	@books = Book.all
  	@book = Book.new
  end
  def create
  	@book = Book.new(book_params)
  	if @book.save
  		format.html {redirect_to @book, notice: 'Successfully'}
  end

 def show
 	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

private
def book_params
	params.require(:book).permit(:title, :body)
end




end
end
