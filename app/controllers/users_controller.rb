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
    #アイコン用画像が添付されたか確認
    if params[:user].nil?
      #アイコン用画像が添付されてない場合、リダイレクトしてMSG表示
      redirect_to user_path(@user.id), notice: "変更するアイコンを選択してください"
    else
      #アイコン用画像が添付されている場合、Userテーブルをupdate後、リダイレクトしてMSG表示
      @user.update(user_params)
      redirect_to user_path, notice: "アイコンが変更されました!"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end
end
