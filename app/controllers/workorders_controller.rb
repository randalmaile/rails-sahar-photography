class WorkordersController < ApplicationController

  def show
    @workorder = Workorder.find(params[:id])
  end
  
  def new
    @workorder = Workorder.new
  end

  def create
    @workorder = Workorder.new(params[:workorder])
    if @workorder.save
      flash[:notice] = "Work order Created"
      redirect_to admin_index_path
    else
      flash[:error] = "Your request was not processed. Please try again."
      render :new
    end
  end

  def edit
    @workorder = Workorder.find(params[:id])
  end

  def update
    @workorder = Workorder.find(params[:id])
    if @workorder.update_attributes(params[:workorder])
      flash[:notice] = "Workorder updated"
      redirect_to @workorder
    else
      flash[:error] = "The workorder you tried to updated was not saved."
      render :edit
    end          
  end

  def destroy
    @workorder = Workorder.find(params[:id])
    if @workorder.destroy
      redirect_to admin_index_path, notice: "Workorder was deleted successfully."
    else
      flash[:error] = "There was a problem deleting the workorder"
      render :show
    end
  end
  
end
