class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end
    
    def index
        @doctors = Doctor.all
    end
    
    def new
        @doctor = Doctor.new
        #@recipe.ingredients.build
    end
    
    def create
        Doctor.create(doctor_params)
        redirect_to doctors_path
  end
    
      private
    
      def doctor_params
        params.require(:doctor).permit(:name, :department)
      end
end
