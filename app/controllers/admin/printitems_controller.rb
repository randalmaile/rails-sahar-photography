class Admin::PrintitemsController < ApplicationController
  def index
    @printitems = Printitem.all
  end

  def show
    @printitems = Printitem.all
  end

  def new
    @printitem = Printitem.new
  end

  def create
    @printitem = Printitem.new(params[:Printitem])
    if @printitem.save
      flash[:message] = "success"
      redirect_to @printitem
    else
      flash[:error] = "failure"
      render :new
    end
  end

  def edit
    @printitem = Printitem.find(params[:id])
  end

  def update
  end

  def destroy
  end

end



