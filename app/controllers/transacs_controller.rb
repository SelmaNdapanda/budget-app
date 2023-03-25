class TransacsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transacs = Transac.joins(:groups).where(groups: { id: params[:group_id] }).order(created_at: :desc)
    @group = Group.find(params[:group_id])
    @group_transacs = GroupTransac.where(group: @group).order(created_at: :desc)
  end

  def new
    @new_transac = Transac.new
    @user_groups = Group.where(user: current_user)

    # @user_groups = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @new_transac = Transac.new(transac_params)
    @new_transac.author_id = current_user.id
    @group_transac = GroupTransac.new(group_id: params[:group_id], transac_id: @new_transac.id)
    @new_transac.group_transacs << @group_transac

    if @new_transac.save
      flash[:success] = 'Transaction created successfully.'
      redirect_to group_transacs_path
    else
      flash[:error] = 'Transaction could not be created.'
      render 'new'
    end
  end

  # def create
  #   params = transac_params
  #   @new_transac = Transac.new(name: params[:name], amount: params[:amount])
  #   @new_transac.author = current_user
  #   @group_ids = params[:group_ids]
  #   @group_ids.each do |id|
  #     @group = Group.find(id) unless id == ''
  #     @new_transac.groups.push(@group) unless @group.nil?
  #   end
  #   if @new_transac.save
  #     redirect_to "/groups/#{@group.id}/transacs", notice: 'transaction was successfully added'
  #   else
  #     render :new, alert: "Couldn't add food to transaction"
  #   end
  # end

  private

  def transac_params
    params.require(:transac).permit(:name, :amount)
  end
end
