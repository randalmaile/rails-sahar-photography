class ContactController < ApplicationController
  def index
  end

  def photoshoot_new
    @workorder = Workorder.new
  end

  def photoshoot_create
    @workorder = Workorder.new(params[:workorder])
    if @workorder.save
      flash[:notice] = "Photoshoot request submitted"
      redirect_to contact_confirmation_path
    else
      flash[:error] = "Your request was not submitted. Please try again"
      render :photoshoot_new
    end
  end 

  def confirmation
  end

  def mailinglist
  end
end
