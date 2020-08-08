class StudentsController < ApplicationController
    layout 'common'
	def index
      @students=Student.all

	end
	def students
       @courses=Student.all
	 end
    def new
	 	@students=Student.new
	 end
	 def show
		 @students=Student.find(params[:id])
	 end
	 def edit
		 @cstudents=Student.find(params[:id])
	 end
    def create
	 	@cstudents=Student.new(course_params)
    	 if @students.save
	 		redirect_to @students
	 	else
	 		render 'new'
	 	end
	 end
	def update
    	 @students=Student.find(params[:id])
		 @students.update(student_params)
	     if @students.save
			redirect_to @students
		else
			render 'new'
		end
	   
	 end
	 def destroy
		 @students=Student.find(params[:id])
		 @students.destroy
		 redirect_to @students

	 end

	 private

	 def course_params
        params.require(:course).permit(:name, :code, :description, :number_sem, :status)
	 end
    private
    
end