class CostsController < ApplicationController
	def create
    @user = current_user
    @cost = @user.costs.create(cost_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = current_user
    @cost = @user.costs.find(params[:id])
    @cost.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = current_user
    @cost = Cost.find(params[:id])
  end

  def update
    @user = current_user
    @cost = @user.costs.find(params[:id])
    if @cost.update(cost_params)
      redirect_to @user
    else 
      render 'edit'
    end
  end
  
  private
    def cost_params
      params.require(:cost).permit(:item, :price, :date)
    end

end
