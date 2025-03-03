class SeniorsController < ApplicationController
before_action :set_senior, only:[:show]
  def index
    @seniors = Senior.all
  end
  def show
  end



private 
def set_senior
  @senior = Senior.find(params[:id])
end

end
