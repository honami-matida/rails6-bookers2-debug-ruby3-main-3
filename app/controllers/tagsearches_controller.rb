class TagsearchesController < ApplicationController
  def search
    @model = Book  #search機能とは関係なし
    @word = params[:content]
    @books = Book.where("category LIKE?","%#{@word}%")
    render "tagsearches/tagsearch"
  end
end
