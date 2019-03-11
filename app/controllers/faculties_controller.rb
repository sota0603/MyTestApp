class FacultiesController < ApplicationController


  def create
    @Faculty = Faculty.new(faculty_param)

    @Faculty.save
    redirect_to @Faculty
  end

  def index
    @Faculty = Faculty.all
  end

  def show
    @Faculty = Faculty.find_by(params[:id])
  end

  private

  def faculty_param
    params.require(:faculty).permit(:title)
  end

end
