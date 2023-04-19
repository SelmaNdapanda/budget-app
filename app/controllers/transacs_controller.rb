class TransacsController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.find(params[:group_id])
    @group_transacs = GroupTransac.includes(:transac).where(group_id: params[:group_id]).order(created_at: :desc)
  end

  def new
    @new_transac = Transac.new
    @user_groups = Group.where(user: current_user)
  end

  def create
    @new_transac = Transac.create(name: transac_params[:name], amount: transac_params[:amount],
                                  author_id: transac_params[:author_id])
    @group_transac = GroupTransac.create(group_id: transac_params[:group_id], transac_id: @new_transac.id)

    if @group_transac.save
      flash[:success] = 'Transaction created successfully.'
      redirect_to group_transacs_path(transac_params[:group_id])
    else
      flash[:error] = 'Transaction could not be created.'
      render 'new', new_transac: Transac.new
    end
  end

  private

  def transac_params
    params.require(:transac).permit(:name, :amount, :author_id, :group_id)
  end
end
