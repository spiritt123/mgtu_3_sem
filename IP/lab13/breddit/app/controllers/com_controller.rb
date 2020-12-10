class ComController < ApplicationController
  def index
  end

  def create_post
    user = User.find_by_id(session[:user_id])
    Bredpost.create_post(params[:title_post], params[:bredpost][:create_post], user.name)
    redirect_to com_index_url
  end
  
  def like_post
    user = User.find_by_id(session[:user_id])
    Bredlike.create_post(params[:id_like], user.name)
    redirect_to com_index_url
  end
  
  def create_comment
    user = User.find_by_id(session[:user_id])
    Bredcomment.create_comment(params[:button], params[:bredcomment][:create_comment], user.name)
    redirect_to com_index_url
  end
end
