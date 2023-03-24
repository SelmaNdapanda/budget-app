class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
  end

  def new
    @new_group = Group.new
  end

  def create
    @new_group = Group.new(group_params)

    if @new_group.save
      flash[:success] = 'Category created successfully.'
      redirect_to groups_path
    else
      flash[:error] = 'Category could not be created.'
      render 'new'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
