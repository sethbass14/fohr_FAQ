class SectionsController < ApplicationController

  def show
    @section = Section.where(slug: params[:id]).first
  end

end
