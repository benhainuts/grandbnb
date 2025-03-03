class SeniorsController < ApplicationController
before_action :set_senior, only:[:show]
  def index
    @seniors = Senior.all
  end

  def show
  end

  def new
    @senior = Senior.new
  end

  def create
    @senior = Senior.new(senior_params)
    @senior.user_id = User.ids[0]
    # raise
    if @senior.save
      redirect_to senior_path(@senior)
    else
      render :new, status: :unprocessable_entity
    end
  end


private
def set_senior
  @senior = Senior.find(params[:id])
end

def senior_params
  params.require(:senior).permit(:name, :age, :address, :key_skill)
end

end
