module Admin
  class AdminCourseController < Admin::BaseController 
  	def index
	    @courses=Course.all

  	end
    def show
	    @courses=Course.all

    end
  end
end
