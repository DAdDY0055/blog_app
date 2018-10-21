class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @favorites_blogs = @user.favorites_blogs
  end
  
  def update
    @user = User.find(params[:id])
    if params[:user].nil?
      redirect_to user_path(@user.id), notice: "変更するアイコンを選択してください"
    else
      @user.update(user_params)
      redirect_to user_path, notice: "アイコンが変更されました!"
    end
    
    #binding.pry
    #if @user.update(user_params)
    #  redirect_to user_path, notice: "アイコンが変更されました!"
    #else
    #  binding.pry
    #  redirect_to "users#show", notice: "変更するアイコンを選択してください"
    #end

    #プロフィール画像が変更されたか
    #binding.pry
    #unless @user.image.filename #@user.image_changed?
    #  redirect_to user_path, notice: "アイコンが変更されました!"
    #else
    #  redirect_to user_path, notice: "変更するアイコンを選択してください"
    #end
    #プロフィール画像が登録されているか確認
    #unless @user.image.url.nil?
    #  redirect_to user_path
    #else
      #プロフィール画像が登録されていない場合
    #  redirect_to user_path, notice: "アイコンを選択してください"
    #end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end
end
