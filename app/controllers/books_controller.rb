class BooksController < ApplicationController

  def top
    @book = Book.new
    @books = Book.all
  end

  def create
    # strongパラメータを使用する
    @book = Book.new(book_params)
    if @book.save
      redirect_to show_path(@book.id)
    else
      @books = Book.all
      render action: :top
    end
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
    redirect_to show_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to top_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
