class AdminController < ApplicationController
  def index
    @workorders = Workorder.all
  end
end
