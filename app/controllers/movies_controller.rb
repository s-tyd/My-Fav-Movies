class MoviesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @q = Movie.ransack(params[:q])
    @movies = @q.result.page(params[:page])
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to(root_path)
      flash[:notice] = "保存しました"
    else
      render('movies/new')

    end
  end

  def update
    if @movie.update(movie_params)
      flash[:notice] = "投稿を編集しました"
      redirect_to(root_path)
    else
      render('movies/edit')
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to(root_path)
  end

  private

  def set_post
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :rate, :year, :content)
  end
end

