class BooksController < ApplicationController

  def top
    @book = Book.new
    @books = Book.all
  end

  def create
    # strongパラメータを使用する
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "投稿成功!"
      redirect_to show_path(@book.id)
    else
      flash[:notice] = "投稿失敗したやで"
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
    if book.update(book_params)
      flash[:notice] = "編集成功!"
      redirect_to show_path(book.id)
    else
      @book = Book.find(params[:id])
      flash[:notice] = "編集失敗したやで"
      render action: :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "削除成功!"

    redirect_to top_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
