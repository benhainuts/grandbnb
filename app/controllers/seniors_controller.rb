class SeniorsController < ApplicationController
  def index
    @seniors = Senior.all
  end
end
