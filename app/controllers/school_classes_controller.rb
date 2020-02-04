class SchoolClassesController < ApplicationController
    def index
    end
    
    def show
        @school = SchoolClass.find(params[:id])
    end

    def edit
        @school = SchoolClass.find(params[:id])
    end

    def update
        @school = SchoolClass.find(params[:id])
        @school.update(strong(:title, :room_number))
        redirect_to school_class_path(@school)
    end

    def create
        @school = SchoolClass.new(strong(:title, :room_number))
        @school.save
        redirect_to school_class_path(@school)
    end

    def new
        @school = SchoolClass.new()
    end

    def change
    end

    private
    def strong(*args)
        params.require(:school_class).permit(*args)
    end

end