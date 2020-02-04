class StudentsController < ApplicationController
    def index
    end
    
    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(strong(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new()
    end

    def create
        @student = Student.new(strong(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def change
    end

    private
    def strong(*args)
        params.require(:student).permit(*args)
    end

end