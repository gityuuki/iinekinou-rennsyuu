class FavoritesController < ApplicationController

def create
  @book = Book.find(params[:book_id])
  favorite = current_user.favorites.new(:book_id => @book.id)
  favorite.save
  render 'replace.js.erb'
end

def destroy
  @book = Book.find(params[:book_id])
  favorite = Favorite.find_by(user_id: current_user, book_id: params[:book_id])
  favorite.destroy
  render 'replace.js.erb'
end


end

