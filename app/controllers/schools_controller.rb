class SchoolsController < ApplicationController
  def index
    @schools = School.all 
  end 
  
  def new
    @school = School.new
  end 
  
  def create
    @school = School.create(school_params)
    redirect_to school_path(@school)
  end 

   
  def edit
    @school = School.find(params[:id])
  end
  
  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to school_path(@school)
  end 
  
  def show
    @school = School.find(params[:id])
  end 

  def school_params
    params.require(:school).permit(:title,:room_number)
  end 
end
