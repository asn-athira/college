class CoursesController < ApplicationController
    layout 'common'
	def index
      @courses=Course.all

	end
	def courses
       @courses=Course.all
	 end
    def new
    @course=Course.new
	 end
	 def show
		 @course=Course.find(params[:id])
	 end
	 def edit
		 @course=Course.find(params[:id])
	 end
    def create
	 	@course=Course.new(course_params)
    	 if @course.save
	 		redirect_to @course
	 	else
	 		render 'new'
	 	end
	 end
	def update
    	 @course=Course.find(params[:id])
		 @course.update(course_params)
	     if @course.save
			redirect_to @course
		else
			render 'new'
		end
	   
	 end
	 def destroy
		 @course=Course.find(params[:id])
		 @course.destroy
		 redirect_to @course

	 end

	 private

	 def course_params
        params.require(:course).permit(:name, :code, :description, :number_sem, :status)
	 end
    private
    
end